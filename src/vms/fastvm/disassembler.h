#include "instruction.h"

class IO;

namespace FVM
{
	class Disassembler
	{
	public:
		static void disassemble(IO& io, const Instruction * program, unsigned int count);

	private:
		static void indent(IO& io, unsigned int count);
	};
}
