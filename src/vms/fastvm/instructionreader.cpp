#include "instructionreader.h"

#include "system/filedata.h"


namespace FVM
{
	InstructionReader::InstructionReader(FileData& filedata, char debugChar) :
		m_FileData(filedata),
		m_ReadIndex(0),
		m_DebugChar(debugChar)
	{

	}

	// Parses one pseudo instruction from the file, aggregating instruction chains where possible
	Instruction InstructionReader::readNext()
	{
		while (m_ReadIndex < m_FileData.getSize())
		{
			char c = m_FileData.getData()[m_ReadIndex];
			switch (c)
			{
			case '+':
			case '-':
				return readMath();

			case '<':
			case '>':
				return readIndex();

			case '[':
				return readJumpForward();

			case ']':
				return readJumpBack();

			case '.':
				return readOutput();

			case ',':
				return readInput();

			default:
				m_ReadIndex++;
				if (isDebugChar(c))
				{
					return buildInstruction(OP_DEBUG, 0);
				}
			}
		}

		return buildInstruction(OP_END, 0);
	}

	Instruction InstructionReader::readMath()
	{
		Operation operation = OP_ADD;
		unsigned int operand = 0;
		bool stop = false;

		while (!stop && (m_ReadIndex < m_FileData.getSize()))
		{
			char c = m_FileData.getData()[m_ReadIndex];
			switch (c)
			{
			case '+':
				if (operation == OP_ADD)
				{
					// We're currentlt counting up adds
					operand++;
				}
				else if (operand == 0)
				{
					// We've undone a series of SUB instructions, so flip the operation
					operation = OP_ADD;
					operand = 1;
				}
				else
				{
					// We undoing a series of subs
					operand--;
				}
				break;

			case '-':
				if (operation == OP_SUB)
				{
					// We're currently counding up subs
					operand++;
				}
				else if (operand == 0)
				{
					// We've undone a series of ADD instructions, so flip the operation
					operation = OP_SUB;
					operand = 1;
				}
				else
				{
					// We're undoing a series of subs
					operand--;
				}
				break;

			case '<':
			case '>':
			case '[':
			case ']':
			case '.':
			case ',':
				// End of math instruction stream, so we're done
				stop = true;
				m_ReadIndex--; // Unwind the last char
				break;

			default:
				if (isDebugChar(c))
				{
					stop = true;
					m_ReadIndex--;
				}
				break;
			}

			m_ReadIndex++;
		}

		if (operand == 0 ) return buildInstruction(OP_NOP, 0);
		return buildInstruction(operation, operand);
	}

	Instruction InstructionReader::readIndex()
	{
		Operation operation = OP_MOVERIGHT;
		unsigned int operand = 0;
		bool stop = false;

		while (!stop && (m_ReadIndex < m_FileData.getSize()))
		{
			char c = m_FileData.getData()[m_ReadIndex];
			switch (c)
			{
			case '>':
				if (operation == OP_MOVERIGHT)
				{
					// We're currently moving right
					operand++;
				}
				else if (operand == 0)
				{
					// We've undone a series of < instructions, so flip the operation
					operation = OP_MOVERIGHT;
					operand = 1;
				}
				else
				{
					// We're undoing a previous series of <
					operand--;
				}
				break;

			case '<':
				if (operation == OP_MOVELEFT)
				{
					// We're currently moving left
					operand++;
				}
				else if (operand == 0)
				{
					// We've undone a series of > instructions, so flip the operation
					operation = OP_MOVELEFT;
					operand = 1;
				}
				else
				{
					// We're undoing a previous series of >
					operand--;
				}
				break;

			case '+':
			case '-':
			case '[':
			case ']':
			case '.':
			case ',':
				// End of instruction stream, so we're done
				stop = true;
				m_ReadIndex--; // Unwind the last char
				break;

			default:
				if (isDebugChar(c))
				{
					stop = true;
					m_ReadIndex--;
				}
				break;
			}

			m_ReadIndex++;
		}

		if (operand == 0 ) return buildInstruction(OP_NOP, 0);
		return buildInstruction(operation, operand);
	}

	Instruction InstructionReader::readJumpForward()
	{
		// This instruction will be linked in a later pass
		m_ReadIndex++;
		return buildInstruction(OP_JUMPFORWARD, 0);
	}

	Instruction InstructionReader::readJumpBack()
	{
		// This instruction will be linked in a later pass
		m_ReadIndex++;
		return buildInstruction(OP_JUMPBACK, 0);
	}

	Instruction InstructionReader::readInput()
	{
		m_ReadIndex++;
		return buildInstruction(OP_IN, 0);
	}

	Instruction InstructionReader::readOutput()
	{
		m_ReadIndex++;
		return buildInstruction(OP_OUT, 0);
	}

}