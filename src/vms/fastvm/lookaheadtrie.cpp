#include "lookaheadtrie.h"

#include "vms/vmexception.h"

#include "linkernode.h"


namespace FVM
{
	//-------------------------------------------------------------------------------------------//
	// Node
	//-------------------------------------------------------------------------------------------//
	class TrieNode
	{
	public:
		TrieNode() :
			add(nullptr),
			sub(nullptr),
			left(nullptr),
			right(nullptr),
			out(nullptr),
			in(nullptr),
			forward(nullptr),
			back(nullptr),
			set(nullptr),
			zeromult(nullptr),
			handler(nullptr)	
		{}

		LookAheadTrie::PFNhandler setHandler(LookAheadTrie::PFNhandler p)
		{
			LookAheadTrie::PFNhandler oldHandler = handler;
			handler = p;
			return oldHandler;
		}

		LookAheadTrie::PFNhandler getHandler() const
		{
			return handler;
		}

		void dispose()
		{
			if (add) add->dispose();
			if (sub) sub->dispose();
			if (left) left->dispose();
			if (right) right->dispose();
			if (in) in->dispose();
			if (out) out->dispose();
			if (forward) forward->dispose();
			if (back) back->dispose();
			if (set) set->dispose();
			if (zeromult) zeromult->dispose();
			delete this;
		}

		void setChild(char instructionCode, TrieNode * node)
		{
			switch (instructionCode)
			{
			case '+':	add = node;			break;
			case '-':	sub = node;			break;
			case '<':	left = node;		break;
			case '>':	right = node;		break;
			case '.':	out = node;			break;
			case ',':	in = node;			break;
			case '[':	forward = node;		break;
			case ']':	back = node;		break;
			case 's':	set = node;			break;
			case 'z':	zeromult = node;	break;

			default:
				throw VmException("Unrcognised instruction code %c\n", instructionCode);
			}
		}

		TrieNode * getChild(char instructionCode)
		{
			TrieNode * node;
			switch (instructionCode)
			{
			case '+':	node = add; break;
			case '-':	node = sub; break;
			case '<':	node = left; break;
			case '>':	node = right; break;
			case '.':	node = out; break;
			case ',':	node = in; break;
			case '[':	node = forward; break;
			case ']':	node = back; break;
			case 's':	node = set; break;
			case 'z':	node = zeromult; break;

			default:
				throw VmException("Unrcognised instructionCode %c\n", instructionCode);
			}

			if (node == nullptr)
			{
				node = new TrieNode();
				setChild(instructionCode, node);
			}

			return node;
		}

		TrieNode * getChildByInstruction(Instruction instruction) const
		{
			switch (getOperation(instruction))
			{
			case OP_ADD:			return add;
			case OP_SUB:			return sub;
			case OP_MOVELEFT:		return left;
			case OP_MOVERIGHT:		return right;
			case OP_IN:				return in;
			case OP_OUT:			return out;
			case OP_JUMPFORWARD:	return forward;
			case OP_JUMPBACK:		return back;
			case OP_SET:			return set;
			case OP_ZEROMULT:		return zeromult;

			default:
				return nullptr;
			}
		}

	private:
		TrieNode *	add;
		TrieNode *	sub;
		TrieNode *	left;
		TrieNode *	right;
		TrieNode *	out;
		TrieNode *	in;
		TrieNode *	forward;
		TrieNode *	back;
		TrieNode *	set;
		TrieNode *	zeromult;
		LookAheadTrie::PFNhandler	handler;
	};



	//-------------------------------------------------------------------------------------------//
	// Trie
	//-------------------------------------------------------------------------------------------//

	LookAheadTrie::LookAheadTrie() :
		m_Root(nullptr),
		m_LongestStream(0)
	{

	}
	
	void LookAheadTrie::dispose()
	{
		if (m_Root)
		{
			LOG_INFO("Disposing LookAheadTrie\n");
			m_Root->dispose();
			m_Root = nullptr;
		}
	}

	LookAheadTrie::PFNhandler LookAheadTrie::registerHandler(const char * instructionStream, PFNhandler handler)
	{
		LOG_INFO("Adding handler for %s\n", instructionStream);

		TrieNode * node;
		if (m_Root)
		{
			node = m_Root;
		}
		else
		{
			node = m_Root = new TrieNode();
		}

		unsigned int count = 0;
		while (*instructionStream)
		{
			node = node->getChild(*instructionStream);
			instructionStream++;
			count++;
		}

		if (m_LongestStream < count) m_LongestStream = count;

		return node->setHandler(handler);
	}

	int LookAheadTrie::look(LinkerNode * linkerNode)
	{
		if (m_Root == nullptr) return 0;
		if (linkerNode == nullptr) return 0;

		unsigned int streamIndex = 0;
		Instruction instructions[1024];
		LinkerNode * originalNode = linkerNode;

		TrieNode * trieNode = m_Root->getChildByInstruction(linkerNode->instruction);
		while (trieNode && linkerNode)
		{
			instructions[streamIndex++] = linkerNode->instruction;

			PFNhandler handler = trieNode->getHandler();
			if (handler)
			{
				return handler(originalNode, instructions);
			}

			linkerNode = linkerNode->next;
			if (linkerNode) trieNode = trieNode->getChildByInstruction(linkerNode->instruction);
		}

		return 0;
	}
}
