#ifndef INC_INSTRUCTIONREADER_H
#define INC_INSTRUCTIONREADER_H

#include "instruction.h"

class FileData;

namespace FVM
{
	class InstructionReader
	{
	public:
						InstructionReader(FileData& program, char debugChar);

		Instruction		readNext();

	private:
		bool			isDebugChar(char c) const { return (m_DebugChar && (c == m_DebugChar)); }
		Instruction		readMath();
		Instruction		readIndex();
		Instruction		readJumpForward();
		Instruction		readJumpBack();
		Instruction		readInput();
		Instruction		readOutput();

		FileData&		m_FileData;
		unsigned int	m_ReadIndex;
		char			m_DebugChar;
	};
}

#endif
