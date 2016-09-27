#include "linkernode.h"

namespace FVM
{
	void LinkerNode::unlink(unsigned int count)
	{
		LinkerNode * newNext = next;
		while (count-- && newNext)
		{
			LinkerNode * temp = newNext->next;
			delete newNext;
			newNext = temp;
		}

		next = newNext;
	}

	void LinkerNode::dispose()
	{
		LinkerNode * node = next;
		while (node)
		{
			LinkerNode * temp = node->next;
			delete node;
			node = temp;
		}
		delete this;
	}
}
