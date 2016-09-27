#ifndef INC_LINKERNODE_H
#define INC_LINKERNODE_H

#include "instruction.h"

namespace FVM
{
	class LinkerNode
	{
	public:
		LinkerNode(Instruction i) :
			instruction(i),
			next(nullptr)
		{

		}

		void				unlink(unsigned int count);
		void				dispose();

		Instruction			instruction;
		LinkerNode *		next;

	public:
		static inline Instruction		getNextInstruction(LinkerNode * node)
		{
			if (node && node->next)
			{
				return node->next->instruction;
			}
			return buildInstruction(OP_END, 0);
		}
	};

}

#endif
