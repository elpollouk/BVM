#include "instruction.h"

class IO;

namespace FVM
{
	class ArmAssembler
	{
	public:
		static void toassembler(IO& io, const Instruction * program, unsigned int count);

	};
}
