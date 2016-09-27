#include "arm_assembler.h"

#include "vms/vmexception.h"
#include "system/io.h"

#define ASSERT(e) if (!(e)) throw VmException("ASSERT FAILED: " #e)

namespace FVM
{
	/* Overview
	 * r0 - Current cell value when loaded
	 * r4 - mindex
	 * r5 - msize
	 * r6 - memory
	 */

	void emitProgStart(IO& io)
	{
		// Set up the code section
		io.writef(".text\n");
		io.writef(".align\t\t4\n");

		io.writef(".memSize: .word 120000\n");

		io.writef(".global\t\tmain\n");
		io.writef(".type\t\tmain,\t%%function\n");

		io.writef("main:\n");
		io.writef("\tstmfd\tsp!, {lr}\n");
		// Load memory size
		io.writef("\tldr\t\tr0, .memSize\n");
		// Store the memory size for later
		io.writef("\tmov\t\tr5, r0\n");
		// Allocate the memory and store the address for later
		io.writef("\tbl\t\tmalloc\n");
		io.writef("\tmov\t\tr4, r0\n");
		io.writef("\tmov\t\tr6, r0\n");
		// Clear the memory using memset
		io.writef("\tmov\t\tr1, #0\n");
		io.writef("\tmov\t\tr2, r5\n");
		io.writef("\tbl\t\tmemset\n");
		io.writef("\tmov\t\tr0, #0\n");
		io.writef("\n");
	}

	void emitProgEnd(IO& io)
	{
		// Get the address of the allocated memory
		io.writef("\tmov\t\tr0, r6\n");
		// Call free
		io.writef("\tbl\t\tfree\n");
		// Pop the return address and return 0
		io.writef("\tldmfd\tsp!, {lr}\n");
		io.writef("\tmov\t\tr0, #0\n");
		io.writef("\tbx\t\tlr\n");
	}

	void emitAdd(IO& io, Instruction instruction)
	{
		unsigned int operand = getOperand(instruction);
		ASSERT(operand <= 255);

		io.writef("#OP_ADD %u\n", operand);
		io.writef("\tadd\t\tr0, r0, #%u\n", operand);
		io.writef("\n");
	}

	void emitSub(IO& io, Instruction instruction)
	{
		unsigned int operand = getOperand(instruction);
		ASSERT(operand <= 255);

		io.writef("#OP_SUB %u\n", operand);
		io.writef("\tsub\t\tr0, r0, #%u\n", operand);
		io.writef("\n");
	}

	void emitMoveLeft(IO& io, Instruction instruction)
	{
		unsigned int operand = getOperand(instruction);
		ASSERT(operand <= 255);

		io.writef("#OP_MOVELEFT %u\n", operand);
		io.writef("\tstr\t\tr0, [r4]\n"); // Write the current value back to memory
		io.writef("\tsub\t\tr4, r4, #%u\n", operand << 2);
		io.writef("\tldr\t\tr0, [r4]\n"); // Load the new value
		io.writef("\n");
	}

	void emitMoveRight(IO& io, Instruction instruction)
	{
		unsigned int operand = getOperand(instruction);
		ASSERT(operand <= 255);

		io.writef("#OP_MOVERIGHT %u\n", operand);
		io.writef("\tstr\t\tr0, [r4]\n"); // Write the current value back to memory
		io.writef("\tadd\t\tr4, r4, #%u\n", operand << 2);
		io.writef("\tldr\t\tr0, [r4]\n"); // Load the new value
		io.writef("\n");
	}

	void emitJumpForward(IO& io, Instruction instruction, unsigned int pindex)
	{
		unsigned int operand = getOperand(instruction);

		io.writef("#OP_JUMPFORWARD %u\n", operand);
		io.writef("\tcmp\t\tr0, #0\n");
		io.writef("\tbeq\t\t.inst%X\n", operand);
		io.writef(".inst%X:\n", pindex );
		io.writef("\n");
	}

	void emitJumpBack(IO& io, Instruction instruction, unsigned int pindex)
	{
		unsigned int operand = getOperand(instruction);

		io.writef("#OP_JUMPBACK %u\n", operand);
		io.writef("\tcmp\t\tr0, #0\n");
		io.writef("\tbne\t\t.inst%X\n", operand);
		io.writef(".inst%X:\n", pindex);
		io.writef("\n");
	}

	void emitOut(IO& io, Instruction instruction)
	{
		io.writef("#OP_OUT\n");
		io.writef("\tbl\t\tputchar\n");
		io.writef("\n");
	}

	void emitIn(IO& io, Instruction instruction)
	{
		io.writef("#OP_IN\n");
		io.writef("\tbl\t\tgetchar\n");
		io.writef("\n");
	}

	void emitSet(IO& io, Instruction instruction)
	{
		unsigned int operand = getOperand(instruction);
		ASSERT(operand <= 255);

		io.writef("#OP_SET\n");
		io.writef("\tmov\t\tr0, #%u\n", operand);
		io.writef("\n");
	}

	void emitZeroAdd(IO& io, Instruction instruction, unsigned int pindex)
	{
		int operand = signextend<signed int, 24>(getOperand(instruction));
		ASSERT((-255 <= operand) && (operand <= 255));

		io.writef("#OP_ZEROADD %d\n", operand);
		io.writef("\tcmp\t\tr0, #0\n");
		io.writef("\tbeq\t\t.zeroadd%X_end\n", pindex);
		io.writef("\tmov\t\tr2, r4\n");
		if (operand >= 0)
		{
			io.writef("\tadd\t\tr2,	r2, #%d\n", operand << 2);
		}
		else
		{
			io.writef("\tsub\t\tr2,	r2, #%d\n", (-operand) << 2);	
		}
		io.writef("\tldr\t\tr1, [r2]\n");
		io.writef("\tadd\t\tr1, r1, r0\n");
		io.writef("\tmov\t\tr0, #0\n");
		io.writef("\tstr\t\tr1,	[r2]\n");
		io.writef(".zeroadd%X_end:\n", pindex);
		io.writef("\n");
	}

	void emitZeroMult(IO& io, Instruction instruction, unsigned int pindex)
	{
		int operandA = getOperandSignedA12(instruction);
		unsigned int operandB = getOperandB12(instruction);
		ASSERT((-255 <= operandA) && (operandA <= 255));
		ASSERT(operandB < 255);

		io.writef("#OP_ZEROMULT %d, %u\n", operandA, operandB);
		io.writef("\tcmp\t\tr0, #0\n");
		io.writef("\tbeq\t\t.zeromult%X_end\n", pindex);
		io.writef("\tmov\t\tr2, r4\n");
		if (operandA >= 0)
		{
			io.writef("\tadd\t\tr2,	r2, #%d\n", operandA << 2);
		}
		else
		{
			io.writef("\tsub\t\tr2,	r2, #%d\n", (-operandA) << 2);	
		}
		io.writef("\tldr\t\tr1, [r2]\n");
		io.writef("\tmov\t\tr3, #%u\n", operandB);
		io.writef("\tmul\t\tr0, r0, r3\n");
		io.writef("\tadd\t\tr1, r1, r0\n");
		io.writef("\tmov\t\tr0, #0\n");
		io.writef("\tstr\t\tr1,	[r2]\n");
		io.writef(".zeromult%X_end:\n", pindex);
		io.writef("\n");
	}

	void emitSearch(IO& io, Instruction instruction, unsigned int pindex)
	{
		int operand = signextend<signed int, 24>(getOperand(instruction));
		ASSERT((-255 <= operand) && (operand <= 255));

		io.writef("#OP_SEARCH %d\n", operand);
		io.writef("\tstr\t\tr0, [r4]\n");
		io.writef("\tcmp\t\tr0, #0\n");
		io.writef("\tbeq\t\t.search%X_end\n", pindex);
		io.writef("\t.search%X_start:\n", pindex);
		if (operand >= 0)
		{
			io.writef("\tadd\t\tr4, r4, #%d\n", operand << 2);
		}
		else
		{
			io.writef("\tsub\t\tr4, r4, #%d\n", (-operand) << 2);
		}
		io.writef("\tldr\t\tr0, [r4]\n");
		io.writef("\tcmp\t\tr0, #0\n");
		io.writef("\tbne\t\t.search%X_start\n", pindex);
		io.writef("\t.search%X_end:\n", pindex);
		io.writef("\n");
	}

	void ArmAssembler::toassembler(IO& io, const Instruction * program, unsigned int count)
	{
		emitProgStart(io);

		for (unsigned int index = 0; index < count; index++)
		{
			Instruction instruction = program[index];
			

			switch (getOperation(instruction))
			{
			case OP_NOP:
				break;

			case OP_ADD:
				emitAdd(io, instruction);
				break;

			case OP_SUB:
				emitSub(io, instruction);
				break;

			case OP_MOVELEFT:
				emitMoveLeft(io, instruction);
				break;

			case OP_MOVERIGHT:
				emitMoveRight(io, instruction);
				break;

			case OP_JUMPFORWARD:
				emitJumpForward(io, instruction, index);
				break;

			case OP_JUMPBACK:
				emitJumpBack(io, instruction, index);
				break;

			case OP_OUT:
				emitOut(io, instruction);
				break;

			case OP_IN:
				emitIn(io, instruction);
				break;

			case OP_SET:
				emitSet(io, instruction);
				break;

			case OP_ZEROADD:
				emitZeroAdd(io, instruction, index);
				break;

			case OP_ZEROMULT:
				emitZeroMult(io, instruction, index);
				break;

			case OP_SEARCH:
				emitSearch(io, instruction, index);
				break;

			/*case OP_DEBUG:
				io.writef("DEBUG\n");
				break;

			case OP_END:
				io.writef("END\n");
				break;*/

			default:
				throw VmException("Unrecognised instruction %08X\n", instruction);
			}
		}

		emitProgEnd(io);
	}
}