/*
 * An optimised version of a BVM that will try to compile the code to a quicker byte code for
 */
#include "fastvm.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "system/filedata.h"
#include "system/io.h"
#include "system/metrics.h"
#include "system/timer.h"
#include "vms/vmexception.h"

#include "instruction.h"
#include "instructionreader.h"
#include "linker.h"
#include "disassembler.h"
#include "arm_assembler.h"

namespace FVM
{
	template<class T>
	class FastVM : public VM
	{
	public:
		static const unsigned int kNotSet = ((unsigned int)-1);

		FastVM() :
			m_io(NULL),
			m_DebugChar(0),
			m_Metrics(NULL),
			m_Msize(0),
			m_Mindex(0),
			m_Program(NULL),
			m_Psize(0),
			m_Pindex(0)
		{
		}

		void setMemSize(unsigned int size)
		{
			LOG_INFO("Memory size set to %u\n", size);

			dispose();

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
			if (debugChar) LOG_INFO("Debug character set to %c\n", debugChar);
			m_DebugChar = debugChar;
		}

		void setMetrics(Metrics * metrics)
		{
			m_Metrics = metrics;
			m_Metrics->providedMetrics |= Metrics::LOAD;
			METRICS(m_Metrics->providedMetrics |= Metrics::NUMCYCLES);
		}


		void Load(FileData& program)
		{
			LOG_INFO("Program size = %u\n", program.getSize());
			Timer loadTime;

			// The instruction reader reads instructions from the initial file and attempts to perform an
			// initial optimising pass by aggregating obvious chains of similar instructions
			InstructionReader reader = InstructionReader(program, m_DebugChar);
			// The linker performs a second pass that will link together branch instructions and attempt
			// to perform reimplement more complex constructs (e.g. copy, move, mult)
			Linker linker = Linker(*m_Metrics);

			while (true)
			{
				Instruction instruction = reader.readNext();
				LOG_TRACE("Got instruction %08X\n", instruction);
				if (getOperation(instruction) == OP_END) break;

				linker.addInstruction(instruction);
			}
			m_Metrics->optimisationPasses++;

			m_Program = linker.link();
			m_Psize = linker.getProgramSize();
			m_Pindex = 0;

			m_Metrics->loadTimeMs = loadTime.elapsedMs();

			LOG_INFO("Final program size = %u\n", m_Psize);
		}

		void Execute()
		{
			METRICS(LOG_WARN("Execution Metrics Enabled.\n"));
			METRICS(uint64_t numCycles = 0);

			// Keep looking until we've consumed all of the provided program
			while (m_Pindex < m_Psize)
			{
				Instruction instruction = m_Program[m_Pindex];
				LOG_TRACE("Executing %08X, m_Mindex = %u, m_Memory[m_Mindex] = %d\n", instruction, m_Mindex, m_Memory[m_Mindex]);

				unsigned int operand = getOperand(instruction);

				switch (getOperation(instruction))
				{
				case OP_NOP:
					break;

				case OP_ADD:
					m_Memory[m_Mindex] += operand;
					break;

				case OP_SUB:
					m_Memory[m_Mindex] -= operand;
					break;

				case OP_MOVELEFT:
					if (m_Mindex < operand) throw VmException(this, "Index moved beyond memory start.");
					m_Mindex -= operand;
					break;
					
				case OP_MOVERIGHT:
					if ((m_Msize - m_Mindex) <= operand) throw VmException(this, "Index moved beyond memory end.");
					m_Mindex += operand;
					break;

				case OP_JUMPFORWARD:
					if (m_Memory[m_Mindex] == 0)
					{
						m_Pindex = operand;
					}
					break;
					
				case OP_JUMPBACK:
					if (m_Memory[m_Mindex] != 0)
					{
						m_Pindex = operand;
					}
					break;

				case OP_OUT:
					m_io->writeChar(m_Memory[m_Mindex]);
					break;
					
				case OP_IN:
					m_Memory[m_Mindex] = m_io->readChar(m_Memory[m_Mindex]);
					break;
										
				case OP_SET:
					m_Memory[m_Mindex] = operand;
					break;

				case OP_ZEROADD: {
					unsigned int otherCell = m_Mindex + signextend<signed int, 24>(operand);
					if (m_Msize <= otherCell)
					{
						if (m_Memory[m_Mindex] == 0) break; // This instruction wouldn't be executed in a non-optimising vm
						throw VmException("OP_ZEROADD: Target cell outside valid memory range.");
					}
					m_Memory[otherCell] += m_Memory[m_Mindex];
					m_Memory[m_Mindex] = 0;
					break;}
				
				case OP_ZEROMULT: {
					unsigned int otherCell = m_Mindex + getOperandSignedA12(instruction);
					if (m_Msize <= otherCell)
					{
						if (m_Memory[m_Mindex] == 0) break; // This instruction wouldn't be executed in a non-optimising vm
						throw VmException("OP_ZEROMULT: Target cell outside valid memory range.");
					}
					m_Memory[otherCell] += (m_Memory[m_Mindex] * getOperandB12(instruction));
					m_Memory[m_Mindex] = 0;
					break;}

				case OP_SEARCH: {
					int stride = signextend<signed int, 24>(operand);
					while (m_Memory[m_Mindex] != 0)
					{
						unsigned int newMindex = m_Mindex + stride;
						if (m_Msize <= newMindex) throw VmException("Attempt to search beyond memory bounds.");
						m_Mindex = newMindex;
					}
					break;}
					
				case OP_DEBUG:
					VM::quickDump(*this, *m_io);
					break;

				case OP_END:
					// Jump immediately to the end to exit
					m_Pindex = m_Psize - 1;
					break;

				default:
					throw VmException("Unsupported FastVM instructon %08X", instruction);
				}
				
				m_Pindex++;
				METRICS(numCycles++);
			}
			METRICS(m_Metrics->numCycles += numCycles);
		}

		void Disassemble()
		{
			//Disassembler::disassemble(*m_io, m_Program, m_Psize);
			ArmAssembler::toassembler(*m_io, m_Program, m_Psize);
		}

		unsigned int	getPindex() const { return m_Pindex; }
		unsigned int	getMindex() const { return m_Mindex; }
		unsigned int	getMsize() const { return m_Msize; }
		cellvalue		getMemory(unsigned int mindex) const { return m_Memory[mindex]; }

		void dispose()
		{
			if (m_Memory)
			{
				LOG_INFO("Disposing memory\n");
				free(m_Memory);
				m_Memory = NULL;
				m_Msize = 0;
				m_Mindex = 0;
			}

			if (m_Program)
			{
				LOG_INFO("Disposing program\n");
				free(m_Program);
				m_Program = NULL;
				m_Psize = 0;
				m_Pindex = 0;
			}
		}


	private:
		
		IO *				m_io;
		char				m_DebugChar;
		Metrics *			m_Metrics;


		T *					m_Memory;
		unsigned int		m_Msize;
		unsigned int		m_Mindex;

		Instruction *		m_Program;
		unsigned int		m_Psize;
		unsigned int		m_Pindex;

	};
}


VM * constructFastVM(VM::CellType cellType)
{
	switch (cellType)
	{
	case VM::CELL_S8:
		return new FVM::FastVM<signed char>();
		break;

	case VM::CELL_S16:
		return new FVM::FastVM<signed short>();
		break;

	case VM::CELL_S32:
		return new FVM::FastVM<signed int>();
		break;

	default:
		throw VmException("Unsupported cell type (%u) for FastVM", cellType);
	}
}