/*
 * BVM - A Brainfuck Virtual Machine
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LOG_SYSTEM "Main"
#include "system/debug.h"

#include "vms/vmexception.h"
#include "vms/vm.h"
#include "system/filedata.h"
#include "system/consoleio.h"
#include "system/errorio.h"
#include "system/metrics.h"

// Default VM memory size if not otherwise specified
#define DEFAULT_MEM_SIZE 30000

// Arg handlers
struct ArgHandler
{
	const char * Name;
	int(*Handler)(int argc, char** argv);
};


void parseArgs(int argc, char** argv);
void vmAbort(VmException& vme);
void exec(VM& vm);

static const char * s_ProgramFile = NULL;
static VM::VmType s_VmType = VM::VM_DEBUG;
static VM::CellType s_CellType = VM::CELL_S8;
static unsigned int s_MemSize = DEFAULT_MEM_SIZE;
static IO::EOFMode s_eofMode = IO::EOF_MINUSONE;
static char s_DebugChar = 0;
static bool s_OutputMetrics = false;
static bool s_Disassemble = false;

static ErrorIO s_ErrorIO = ErrorIO();

int main(int argc, char** argv)
{	
	try
	{
		parseArgs(argc, argv);
		
		// Read the file into a FileData objct
		// TODO - Better error handling within the FileData object itself
		LOG_INFO("Loading %s...\n", s_ProgramFile);
		FILE * file = fopen(s_ProgramFile, "rb");
		if (file)
		{
			FileData fileData(file);
			if (fileData.isValid())
			{
				// Construct a VM and load the program into it
				s_ErrorIO.setEofMode(s_eofMode);
				ConsoleIO io = ConsoleIO(s_eofMode);
				VM * vm = VM::construct(s_VmType, s_CellType);

				// Configure the VM
				vm->setIO(&io);
				vm->setMemSize(s_MemSize);
				vm->setDebugChar(s_DebugChar);

				Metrics metrics;
				vm->setMetrics(&metrics);

				// We need to use another try/catch block here as the VM will be destructed as the stack unwinds otherwise
				try
				{
					vm->Load(fileData);
					if (!s_Disassemble)
					{
						vm->Execute();
					}
					else
					{
						vm->Disassemble();
					}
				}
				catch (VmException& vme)
				{
					vmAbort(vme);			
				}

				if (s_OutputMetrics)
				{
					metrics.dump(io);
				}
				
				// Release everything
				vm->dispose();
				delete vm;
				io.dispose();
				fileData.dispose();
			}
			else
			{
				throw VmException("Unable to read %s", s_ProgramFile);
			}
		}
		else
		{
			throw VmException("Unable to open %s", s_ProgramFile);
		}
	}
	catch(VmException& vme)
	{
		vmAbort(vme);
	}
	
	return 0;
}


// Display an error message for a VM exception
void vmAbort(VmException& vme)
{
	s_ErrorIO.writef("VM EXCEPTION!\n");
	s_ErrorIO.writef("%s\n", vme.getMessage());
	if (vme.getVM())
	{
		VM::quickDump(*vme.getVM(), s_ErrorIO);
	}
	exit(1);
}


//-----------------------------------------------------------------------------------------------//
// Arg Parsing
//-----------------------------------------------------------------------------------------------//
int setVmDebug(int argc, char** argv)
{
	LOG_INFO("Setting VM type to DebugVM\n");
	s_VmType = VM::VM_DEBUG;
	return 1;
}

int setVmFast(int argc, char** argv)
{
	LOG_INFO("Setting VM type to FastVM\n");
	s_VmType = VM::VM_FAST;
	return 1;
}

int setCell8(int argc, char** argv)
{
	LOG_INFO("Setting cell size to 8 bits.\n");
	s_CellType = VM::CELL_S8;
	return 1;
}

int setCell16(int argc, char** argv)
{
	LOG_INFO("Setting cell size to 16 bits.\n");
	s_CellType = VM::CELL_S16;
	return 1;
}

int setCell32(int argc, char** argv)
{
	LOG_INFO("Setting cell size to 32 bits.\n");
	s_CellType = VM::CELL_S32;
	return 1;
}

int setMemSize(int argc, char** argv)
{
	if (argc < 2) throw VmException("No memory size specified for -m option.");
	int size = atoi(argv[1]);
	if (size <= 0) throw VmException("Memory size must be a positive value.");
	s_MemSize = (unsigned int)size;

	LOG_INFO("Setting meory size %u.\n", s_MemSize);

	return 2;
}

int setEofModeZero(int argc, char** argv)
{
	LOG_INFO("Setting EOF mode to zero.\n");
	s_eofMode = IO::EOF_ZERO;
	return 1;
}

int setEofModeNoChange(int argc, char** argv)
{
	LOG_INFO("Setting EOF mode to no change.\n");
	s_eofMode = IO::EOF_NOCHANGE;
	return 1;
}

int setDebugChar(int argc, char** argv)
{
	if (argc < 2) throw VmException("No debug character specified for -D option.");
	s_DebugChar = argv[1][0];
	LOG_INFO("Setting debug char to %c\n", s_DebugChar);
	return 2;
}

int setOutputMetrics(int argc, char** argv)
{
	LOG_INFO("Metrics output requested.\n");
	s_OutputMetrics = true;
	return 1;
}

int setProgramFile(int argc, char** argv)
{
	s_ProgramFile = *argv;
	LOG_INFO("Setting program file to %s.\n", s_ProgramFile);
	return 1;
}

int setDisassemble(int argc, char** argv)
{
	s_Disassemble = true;
	LOG_INFO("Setting disassemble mode.\n");
	return 1;
}


//-----------------------------------------------------------------------------------------------//
// Arg handler registration
//-----------------------------------------------------------------------------------------------//
ArgHandler argHandlers[] = {
	{ "-m", setMemSize },
	{ "-e0", setEofModeZero },
	{ "-eX", setEofModeNoChange },
	{ "-D", setDebugChar },
	{ "-metrics", setOutputMetrics },
	{ "-8", setCell8 },
	{ "-16", setCell16 },
	{ "-32", setCell32 },
	{ "-debug", setVmDebug },
	{ "-fast", setVmFast },
	{ "-da", setDisassemble },
	{ NULL, setProgramFile },
};


void parseArgs(int argc, char** argv)
{
	const int numHandlers = sizeof(argHandlers) / sizeof(ArgHandler);
	
	argc--;
	argv++;
	while (argc)
	{
		// Default number of arguments to shift if we can't find a handler
		int shiftCount = 1;
		
		// Search the handlers for to work out what to do with this arg
		for (int i = 0; i < numHandlers; i++)
		{
			ArgHandler& handler = argHandlers[i];
			
			// NULL is treated as a default handler
			if ((handler.Name == NULL) || (strcmp(handler.Name, *argv) == 0))
			{
				if (handler.Handler)
				{
					shiftCount = handler.Handler(argc, argv);
				}
				break;
			}
		}
		
		argc -= shiftCount;
		argv += shiftCount;
	}
	
	if (s_ProgramFile == NULL)
	{
		throw VmException("Usage: bvm FILENAME\n");
	}
}
