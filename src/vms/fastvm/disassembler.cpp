#include "disassembler.h"

#include "vms/vmexception.h"
#include "system/io.h"

namespace FVM
{
	void Disassembler::disassemble(IO& io, const Instruction * program, unsigned int count)
	{
		unsigned int indentCount = 0;

		for (unsigned int index = 0; index < count; index++)
		{
			Instruction instruction = program[index];
			unsigned int operand = getOperand(instruction);

			io.writef("%08X: %08X     ", index, instruction);
			indent(io, indentCount);

			switch (getOperation(instruction))
			{
			case OP_NOP:
				io.writef("NOP\n");
				break;

			case OP_ADD:
				io.writef("ADD %u\n", operand);
				break;

			case OP_SUB:
				io.writef("SUB %u\n", operand);
				break;

			case OP_MOVELEFT:
				io.writef("MOVELEFT %u\n", operand);
				break;

			case OP_MOVERIGHT:
				io.writef("MOVERIGHT %u\n", operand);
				break;

			case OP_JUMPFORWARD:
				io.writef("JUMPFORWARD %u\n", operand);
				indentCount++;
				break;

			case OP_JUMPBACK:
				io.writef("JUMPBACK %u\n", operand);
				indentCount--;
				break;

			case OP_OUT:
				io.writef("OUT\n");
				break;

			case OP_IN:
				io.writef("IN\n");
				break;

			case OP_SET:
				io.writef("SET %u\n", operand);
				break;

			case OP_ZEROADD:
				io.writef("ZEROADD %d\n", signextend<signed int, 24>(operand));
				break;

			case OP_ZEROMULT:
				io.writef("ZEROMULT %d, %u\n", getOperandSignedA12(instruction), getOperandB12(instruction));
				break;

			case OP_SEARCH:
				io.writef("SEARCH %d\n", signextend<signed int, 24>(operand));
				break;

			case OP_DEBUG:
				io.writef("DEBUG\n");
				break;

			case OP_END:
				io.writef("END\n");
				break;

			default:
				throw VmException("Unrecognised instruction %08X\n", instruction);
			}
		}
	}

	void Disassembler::indent(IO& io, unsigned int count)
	{
		while (count)
		{
			io.writef("  ");
			count--;
		}
	}
}