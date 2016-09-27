#include "consoleio.h"

#include <stdio.h>
#include <stdarg.h>


ConsoleIO::ConsoleIO(EOFMode eofMode) :
	m_eofMode(eofMode)
{
}

int ConsoleIO::readChar(int originalValue)
{
	int c = getchar();
	
	if (c == EOF)
	{
		switch (m_eofMode)
		{
		case EOF_ZERO:
			return 0;
			
		case EOF_MINUSONE:
			return -1;
			
		case EOF_NOCHANGE:
			return originalValue;
		}
	}
	
	return c;
}

void ConsoleIO::writeChar(int value)
{
	putchar(value);
	fflush(stdout);
}

void ConsoleIO::writef(const char * format, ...)
{
	va_list argptr;
	va_start(argptr, format);
	vfprintf(stdout, format, argptr);
	fflush(stdout);
	va_end(argptr);
}