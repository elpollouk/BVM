#ifndef INC_CONSOLE_IO
#define INC_CONSOLE_IO

#include "io.h"

class ConsoleIO : public IO
{
public:		
	ConsoleIO(EOFMode eofMode);
	int readChar(int currentValue);
	void writeChar(int value);
	void writef(const char * format, ...);
	
private:
	EOFMode m_eofMode;
};

#endif