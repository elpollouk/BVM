#ifndef INC_LOOKAHEADTRIE_H
#define INC_LOOKAHEADTRIE_H

#include "instruction.h"
#include "system/IDisposable.h"

namespace FVM
{
	class LinkerNode;
	class TrieNode;

	class LookAheadTrie : public IDisposable
	{
	public:
		typedef int (*PFNhandler)(LinkerNode * linkerNode, const Instruction * instructions);

		LookAheadTrie();
		void dispose();

		PFNhandler registerHandler(const char * instructionStream, PFNhandler handler);
		int look(LinkerNode * linkerNode);

	private:
		TrieNode * m_Root;
		unsigned int m_LongestStream;
	};
}

#endif
