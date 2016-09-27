#include "debugvm.h"

#include <stdlib.h>
#include <string.h>

#include "system/filedata.h"
#include "system/io.h"
#include "system/metrics.h"
#include "vmexception.h"

template<class T>
class DebugVM : public VM
{
public:
	static const unsigned int kNotSet = ((unsigned int)-1);

	DebugVM() :
		m_io(NULL),
		m_debugChar(0),
		m_Msize(0),
		m_Mindex(0),
		m_Program(NULL),
		m_Psize(0),
		m_Pindex(0),
		m_BranchCache(kNotSet)
	{
	}

	void setMemSize(unsigned int size)
	{
		if (m_Memory)
		{
			free(m_Memory);
		}

		m_Memory = (T*)malloc(sizeof(T) * size);
		memset(m_Memory, 0, sizeof(T) * size);
		m_Msize = size;
		m_Mindex = 0;
	}

	void setIO(IO * io)
	{
		m_io = io;
	}

	void setDebugChar(char debugChar)
	{
		m_debugChar = debugChar;
	}

	void setMetrics(Metrics * metrics)
	{
		m_Metrics = metrics;
		m_Metrics->providedMetrics |= Metrics::EXECUTION | Metrics::FINAL_PROGRAM_SIZE;
	}


	void Load(FileData& program)
	{
		m_Program = program.getData();
		m_Psize = program.getSize();
		m_Pindex = 0;

		m_Metrics->finalProgramSize = m_Psize;
	}

	void Execute()
	{
		// Keep looking until we've consumed all of the provided program
		while (m_Pindex < m_Psize)
		{
			switch (m_Program[m_Pindex])
			{
			case '>':
				if (m_Mindex == m_Msize - 1) throw VmException(this, "Index moved beyond memory end.");
				++m_Mindex;
				if (m_Mindex > m_Metrics->highestMemory) m_Metrics->highestMemory++;
				break;
				
			case '<':
				if (m_Mindex == 0) throw VmException(this, "Index moved beyond memory start.");
				--m_Mindex;
				break;
				
			case '+':
				++m_Memory[m_Mindex];
				if (m_Memory[m_Mindex] > m_Metrics->highestValue) m_Metrics->highestValue++;
				break;
				
			case '-':
				--m_Memory[m_Mindex];
				if (m_Memory[m_Mindex] < m_Metrics->lowestValue) m_Metrics->lowestValue--;
				break;
				
			case '.':
				m_io->writeChar(m_Memory[m_Mindex]);
				break;
				
			case ',':
				m_Memory[m_Mindex] = m_io->readChar(m_Memory[m_Mindex]);
				break;
				
			case '[':
				if (m_Memory[m_Mindex] == 0)
				{
					loopStart();
				}
				else
				{
					m_BranchCache = m_Pindex;
				}
				break;
				
			case ']':
				if (m_Memory[m_Mindex] != 0)
				{
					if (m_BranchCache == kNotSet)
					{
						loopEnd();
						m_BranchCache = m_Pindex;
					}
					else
					{
						m_Pindex = m_BranchCache;
					}
				}
				else
				{
					m_BranchCache = kNotSet;
				}
				break;

			default:
				if (m_debugChar && (m_debugChar == m_Program[m_Pindex]))
				{
					VM::quickDump(*this, *m_io);
				}
			}
			
			m_Pindex++;
			m_Metrics->numCycles++;
		}
	}

	void Disassemble()
	{
		m_io->writef("Disassembler not available for DebugVM.\n");
	}

	unsigned int	getPindex() const { return m_Pindex; }
	unsigned int	getMindex() const { return m_Mindex; }
	unsigned int	getMsize() const { return m_Msize; }
	cellvalue		getMemory(unsigned int mindex) const { return m_Memory[mindex]; }

	void dispose()
	{
		if (m_Memory)
		{
			free(m_Memory);
			m_Memory = NULL;
			m_Msize = 0;
			m_Mindex = 0;
			m_Program = NULL;
			m_Psize = 0;
			m_Pindex = 0;
		}
	}


private:
	void loopStart()
	{
		// Counter for nested loops
		unsigned int loopCount = 0;
		// We don't update the pindex of the VM directly so that we know what instructon triggered an error
		unsigned int pindex = m_Pindex;

		while (true)
		{
			pindex++;
			if (pindex == m_Psize) throw VmException(this, "Looped beyond program end.");

			char instruction = m_Program[pindex];
			if (instruction == ']')
			{
				if (loopCount == 0)
				{
					m_Pindex = pindex;
					return;
				}
				loopCount--;
			}
			else if (instruction == '[')
			{
				loopCount++;
			}
		}
	}

	void loopEnd()
	{
		// Counter for nested loops
		unsigned int loopCount = 0;
		// We don't update the pindex of the VM directly so that we know what instructon triggered an error
		unsigned int pindex = m_Pindex;

		while (true)
		{
			if (pindex == 0) throw VmException(this, "Looped back beyond program start.");
			pindex--;

			char instruction = m_Program[pindex];
			if (instruction == '[')
			{
				if (loopCount == 0)
				{
					m_Pindex = pindex;
					return;
				}
				loopCount--;
			}
			else if (instruction == ']')
			{
				loopCount++;
			}
		}
	}
	
	IO *			m_io;
	char			m_debugChar;
	Metrics *		m_Metrics;

	T *				m_Memory;
	unsigned int	m_Msize;
	unsigned int	m_Mindex;

	const char *	m_Program;
	unsigned int	m_Psize;
	unsigned int	m_Pindex;
	
	unsigned int	m_BranchCache;
};



VM * constructDebugVM(VM::CellType cellType)
{
	switch (cellType)
	{
	case VM::CELL_S8:
		return new DebugVM<signed char>();
		break;

	case VM::CELL_S16:
		return new DebugVM<signed short>();
		break;

	case VM::CELL_S32:
		return new DebugVM<signed int>();
		break;

	default:
		throw VmException("Unsupported cell type (%u) for DebugVM", cellType);
	}
}