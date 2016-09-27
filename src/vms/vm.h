/*
 * VM interface implemented by all VM types
 */
#ifndef INC_VM_H
#define INC_VM_H

#include "system/IDisposable.h"

class FileData;
class IO;
class Metrics;


class VM : public IDisposable
{
public:
	enum VmType
	{
		VM_DEBUG,
		VM_FAST,
	};

	enum CellType
	{
		CELL_S8,
		CELL_S16,
		CELL_S32,
	};

	typedef int				cellvalue;


	// VM Configuration
	virtual void			setMemSize(unsigned int size) = 0;
	virtual void			setIO(IO * io) = 0;
	virtual void			setDebugChar(char debugChar) = 0;
	virtual void			setMetrics(Metrics * metrics) = 0;

	// Loads a program into the VM
	virtual void			Load(FileData& program) = 0;
	// Executes the currently loaded program
	virtual void			Execute() = 0;
	// Disassemble the loaded program to the provided output
	virtual void			Disassemble() = 0;

	// Returns the current program index..
	virtual unsigned int	getPindex() const = 0;
	virtual unsigned int	getMindex() const = 0;
	virtual unsigned int	getMsize() const = 0;
	virtual cellvalue		getMemory(unsigned int mindex) const = 0;


	// VM factory
	static VM *				construct(VmType vmType, CellType cellType);

	// Dump debug info
	static void				quickDump(const VM& vm, IO& io);
};

#endif