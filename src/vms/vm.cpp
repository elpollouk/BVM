#include "vm.h"

#include "system/io.h"

#include "vmexception.h"

// Supported VMs
#include "debugvm.h"
#include "fastvm/fastvm.h"


#define DUMP_RANGE	5

VM * VM::construct(VmType vmType, CellType cellType)
{
	switch (vmType)
	{
	case VM_DEBUG:
		return constructDebugVM(cellType);

	case VM_FAST:
		return constructFastVM(cellType);
	}

	throw VmException("Unsupported VM type (%u) requested.", vmType);
}


void VM::quickDump(const VM& vm, IO& io)
{
	unsigned int mindex = vm.getMindex();

	io.writef("pindex = %d\n", vm.getPindex());
	io.writef("mindex = %d\n", mindex);

	unsigned int i = 0;
	if (mindex > DUMP_RANGE) i = mindex - DUMP_RANGE;
	for (; i < mindex; i++) {
		io.writef("%d, ", vm.getMemory(i));
	}

	io.writef("<%d>, ", vm.getMemory(mindex));
	mindex++;

	i = (vm.getMsize() - mindex);
	if (i < DUMP_RANGE)
	{
		i += mindex; 
	}
	else
	{
		i = mindex + DUMP_RANGE;
	}

	for (; mindex < i; mindex++) {
		io.writef("%d, ", vm.getMemory(mindex));
	}
	io.writef("\n");
}
