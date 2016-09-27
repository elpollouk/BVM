#ifndef INC_LINKER_H
#define INC_LINKER_H

#include "system/IDisposable.h"
#include "instruction.h"
#include "lookaheadtrie.h"

class Metrics;

namespace FVM
{
	class LinkerNode;

	class Linker : public IDisposable
	{
	public:
						Linker(Metrics& metrics);

		void			addInstruction(Instruction instruction);
		Instruction *	link();
		unsigned int	getProgramSize() const { return m_ProgramSize; }

		void			dispose();

	private:
		LinkerNode *	copyAndResolve(Instruction * program, unsigned int& pindex, LinkerNode * node);

		LookAheadTrie	m_LookAhead;

		Metrics&		m_Metrics;
		unsigned int	m_ProgramSize;
		LinkerNode *	m_Head;
		LinkerNode *	m_Tail;
	};
}

#endif
