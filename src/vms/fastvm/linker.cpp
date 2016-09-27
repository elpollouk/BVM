#include "linker.h"

#include <stdlib.h>
#include "system/metrics.h"
#include "vms/vmexception.h"

#include "linkernode.h"


namespace FVM
{
	//-------------------------------------------------------------------------------------------//
	// Look ahead optimisations
	//-------------------------------------------------------------------------------------------//
	static int zeroCellOptimisation(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found [-]\n");
		node->instruction = buildInstruction(OP_SET, 0);
		LOG_TRACE("New instruction = %08X\n", node->instruction);

		node->unlink(2);
		return 2;
	}

	static int setOptimisation_add(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found s+\n");
		unsigned int currentValue = getOperand(instructions[0]);
		unsigned int nextValue = getOperand(instructions[1]);

		if (0xFFFFFF < (currentValue + nextValue)) return 0; // Can't apply this optimisation (overflow)
		
		node->instruction += nextValue;
		LOG_TRACE("New instruction = %08X\n", node->instruction);

		node->unlink(1);
		return 1;
	}

	static int setOptimisation_sub(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found s-\n");
		unsigned int currentValue = getOperand(instructions[0]);
		unsigned int nextValue = getOperand(instructions[1]);
		
		if (currentValue < nextValue) return 0; // Can't apply this optimisation (underflow)
		
		node->instruction -= nextValue;
		LOG_TRACE("New instruction = %08X\n", node->instruction);

		node->unlink(1);
		return 1;
	}

	static int zeroMultOptimisation_right(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found [->+<]\n");

		unsigned int rightValue = getOperand(instructions[2]);
		unsigned int leftValue = getOperand(instructions[4]);

		if (rightValue != leftValue) return 0; // Can't apply optimisation, moves have different vales

		unsigned int multValue = getOperand(instructions[3]);
		if (multValue > 0xFFF) return 0; // Value to large for operandB

		if (multValue == 1)
		{
			if (rightValue > 0x7FFFFF) return 0; // Range is outside of operand size
			node->instruction = buildInstruction(OP_ZEROADD, rightValue);
		}
		else
		{
			if (rightValue > 0xFFF) return 0; // Range is outside of operandA size
			node->instruction = buildInstruction(OP_ZEROMULT, rightValue, multValue);
		}
		LOG_TRACE("New instruction = %08X\n", node->instruction);

		node->unlink(5);
		return 5;
	}

	static int zeroMultOptimisation_left(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found [-<+>]\n");

		unsigned int leftValue = getOperand(instructions[2]);
		unsigned int rightValue = getOperand(instructions[4]);

		if (rightValue != leftValue) return 0; // Can't apply optimisation, moves have different vales

		unsigned int multValue = getOperand(instructions[3]);
		if (multValue > 0xFFF) return 0; // Value to large for operandB

		if (multValue == 1)
		{
			if (leftValue > 0x7FFFFFF) return 0; // Range is outside of operand size
			node->instruction = buildInstruction(OP_ZEROADD, -(signed int)leftValue);
		}
		else
		{
			if (leftValue > 0xFFF) return 0; // Range is outside of operandA size
			node->instruction = buildInstruction(OP_ZEROMULT, -(signed int)leftValue, multValue);
		}
		LOG_TRACE("New instruction = %08X\n", node->instruction);

		node->unlink(5);
		return 5;
	}

	static int zeroMultOptimisation_rightAlt(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found [>+<-]\n");

		unsigned int rightValue = getOperand(instructions[1]);
		unsigned int leftValue = getOperand(instructions[3]);

		if (rightValue != leftValue) return 0; // Can't apply optimisation, moves have different vales

		unsigned int multValue = getOperand(instructions[2]);
		if (multValue > 0xFFF) return 0; // Value to large for operandB

		if (multValue == 1)
		{
			if (rightValue > 0x7FFFFF) return 0; // Range is outside of operand size
			node->instruction = buildInstruction(OP_ZEROADD, rightValue);
		}
		else
		{
			if (rightValue > 0xFFF) return 0; // Range is outside of operandA size
			node->instruction = buildInstruction(OP_ZEROMULT, rightValue, multValue);
		}
		LOG_TRACE("New instruction = %08X\n", node->instruction);

		node->unlink(5);
		return 5;
	}

	static int zeroMultOptimisation_leftAlt(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found [<+>-]\n");

		unsigned int leftValue = getOperand(instructions[1]);
		unsigned int rightValue = getOperand(instructions[3]);

		if (rightValue != leftValue) return 0; // Can't apply optimisation, moves have different vales

		unsigned int multValue = getOperand(instructions[2]);
		if (multValue > 0xFFF) return 0; // Value to large for operandB

		if (multValue == 1)
		{
			if (leftValue > 0x7FFFFFF) return 0; // Range is outside of operand size
			node->instruction = buildInstruction(OP_ZEROADD, -(signed int)leftValue);
		}
		else
		{
			if (leftValue > 0xFFF) return 0; // Range is outside of operandA size
			node->instruction = buildInstruction(OP_ZEROMULT, -(signed int)leftValue, multValue);
		}
		LOG_TRACE("New instruction = %08X\n", node->instruction);

		node->unlink(5);
		return 5;
	}

	static int search_right(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found [>]\n");
		unsigned int stride = getOperand(instructions[1]);
		node->instruction = buildInstruction(OP_SEARCH, stride);

		node->unlink(2);
		return 2;
	}

	static int search_left(LinkerNode * node, const Instruction * instructions)
	{
		LOG_DEBUG("Found [<]\n");
		unsigned int stride = getOperand(instructions[1]);
		node->instruction = buildInstruction(OP_SEARCH, -(signed int)stride);

		node->unlink(2);
		return 2;
	}


	//-------------------------------------------------------------------------------------------//
	// Linker
	//-------------------------------------------------------------------------------------------//
	Linker::Linker(Metrics& metrics) :
		m_Metrics(metrics),
		m_ProgramSize(0),
		m_Head(nullptr),
		m_Tail(nullptr)
	{
		m_LookAhead.registerHandler("[-]", zeroCellOptimisation);
		m_LookAhead.registerHandler("[+]", zeroCellOptimisation);
		m_LookAhead.registerHandler("s+", setOptimisation_add);
		m_LookAhead.registerHandler("s-", setOptimisation_sub);
		m_LookAhead.registerHandler("[->+<]", zeroMultOptimisation_right);
		m_LookAhead.registerHandler("[-<+>]", zeroMultOptimisation_left);
		m_LookAhead.registerHandler("[>+<-]", zeroMultOptimisation_rightAlt);
		m_LookAhead.registerHandler("[<+>-]", zeroMultOptimisation_leftAlt);
		m_LookAhead.registerHandler("[>]", search_right);
		m_LookAhead.registerHandler("[<]", search_left);
	}

	void Linker::dispose()
	{
		// Clean up the instruction list
		LOG_INFO("Disposing linker\n");
		if (m_Head)
		{
			m_Head->dispose();
			m_Head = m_Tail = nullptr;

			m_LookAhead.dispose();
		}
	}

	// Add a new instruction to the list of instrutions that need to be linked
	void Linker::addInstruction(Instruction instruction)
	{
		// Perform an initial filter on instructions
		if (getOperation(instruction) == OP_NOP) return;

		LinkerNode * newNode = new LinkerNode(instruction);
		m_ProgramSize++;

		if (m_Tail)
		{
			// Attach to the end of the list
			m_Tail->next = newNode;
			m_Tail = newNode;
		}
		else
		{
			// The first instruction in the list
			m_Head = m_Tail = newNode;
		}
	}

	// Flatten the instructions down into a single instruction array.
	// This will also look for optimisations and link together loop instructions
	Instruction * Linker::link()
	{
		LOG_INFO("Linking program, original size = %u\n", m_ProgramSize);

		Instruction * program = (Instruction*)malloc(sizeof(Instruction) * m_ProgramSize);

		unsigned int pindex = 0;
		LinkerNode * node = copyAndResolve(program, pindex, m_Head);
		// We we were returned a node, this means that we stopped before reaching the end of the stream and so
		// we must have hit an OP_JUMPBACK without a matching OP_JUMPFORWARD
		if (node) throw VmException("Loop beyond program start at pindex %u.", pindex);

		m_Metrics.optimisationPasses++;
		m_Metrics.finalProgramSize = m_ProgramSize;

#if (LOG_LEVEL >= LL_TRACE)
		LOG_TRACE("Linked Program (size = %u):\n", m_ProgramSize);
		for (unsigned int i = 0; i < m_ProgramSize; i++)
		{
			LOG_TRACE("%04X: %08X\n", i, program[i]);
		}
#endif

		dispose();

		return program;
	}

	LinkerNode * Linker::copyAndResolve(Instruction * program, unsigned int& pindex, LinkerNode * node)
	{
		// Store the instruction index we want to jump back to at the end of a loop
		unsigned int returnIndex = pindex - 1;

		while (node)
		{
			// Attempt a look ahead optimisation
			int programSizeChange = m_LookAhead.look(node);
			if (programSizeChange != 0)
			{
				m_ProgramSize -= programSizeChange;
				// We want to look ahead with the updated node to see if there are new optimisations available
				// e.g. [-]+ -> s+ -> s
				continue;
			}

			Instruction instruction = node->instruction;
			switch (getOperation(instruction))
			{
			case OP_JUMPFORWARD: {
				// Look ahead to see if we can optimisate away this loop
				LOG_TRACE("Recursing loop at pindex %u\n", pindex);
				// Store the instruction index we want to update once we've resolved the loop end instruction
				unsigned int originalIndex = pindex;
				node = copyAndResolve(program, ++pindex, node->next);
				if (node == nullptr) throw VmException("Loop beyond program end at pindex %u.", originalIndex);
				program[originalIndex] = buildInstruction(OP_JUMPFORWARD, pindex);
				node = node->next;
				pindex++;
				break;}

			case OP_JUMPBACK: {
				LOG_TRACE("Leaving loop at pindex %u, return target = %u\n", pindex, returnIndex);
				program[pindex] = buildInstruction(OP_JUMPBACK, returnIndex);
				return node;
				break;}

			default:
				// Copy the instruction directly into the output
				program[pindex] = instruction;
				pindex++;
				node = node->next;
				break;
			}
		}

		return nullptr;
	}
}
