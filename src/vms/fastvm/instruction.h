#ifndef INC_INSTRUCTION_H
#define INC_INSTRUCTION_H

#include "config.h"
#include "system/debug.h"

namespace FVM 
{
	// Instruction type
	// Top eight bit - Op
	// Bottom 24 bits - Operand
	typedef unsigned int Instruction;

	// Ops have had their values pre shifted into their final position
	enum Operation
	{
		// Place holder
		OP_NOP				= 0,

		// Standard instructions
		OP_ADD				= 1,
		OP_SUB				= 2,
		OP_MOVELEFT			= 3,
		OP_MOVERIGHT		= 4,
		OP_JUMPFORWARD		= 5,
		OP_JUMPBACK			= 6,
		OP_OUT				= 7,
		OP_IN				= 8,

		// Optimised constructs
		OP_SET				= 9,
		OP_ZEROADD			= 11,
		OP_ZEROMULT			= 12,
		OP_SEARCH			= 13,

		// Other
		OP_DEBUG			= 254,
		OP_END				= 255,
	};

	// Taken from http://graphics.stanford.edu/~seander/bithacks.html#FixedSignExtend
	template <typename T, unsigned B>
	inline T signextend(const T x)
	{
	  struct { T x:B; } s;
	  return s.x = x;
	}

	inline Operation getOperation(Instruction instruction)
	{
		return (Operation)(instruction >> 24);
	}

	inline unsigned int getOperand(Instruction instruction)
	{
		return instruction & 0x00FFFFFF;
	}

	inline unsigned int getOperandA12(Instruction instruction)
	{
		return (instruction >> 12) & 0x00000FFF;
	}

	inline int getOperandSignedA12(Instruction instruction)
	{
		return signextend<signed int, 12>((instruction >> 12) & 0x00000FFF);
	}

	inline unsigned int getOperandB12(Instruction instruction)
	{
		return instruction & 0x00000FFF;
	}

	inline Instruction buildInstruction(Operation op, unsigned int operand)
	{
		return (unsigned int)op << 24 | (operand & 0x00FFFFFF);
	}

	inline Instruction buildInstruction(Operation op, unsigned int operandA, unsigned int operandB)
	{
		return (unsigned int)op << 24 | (operandA & 0x00000FFF) << 12 | (operandB & 0x00000FFF);
	}
}

#endif
