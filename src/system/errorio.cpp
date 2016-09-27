#include "errorio.h"

#include <stdio.h>
#include <stdarg.h>

#define SYSTEM_LOG "ErrorIO"
#include "debug.h"

ErrorIO::ErrorIO() :
	m_eofMode(EOF_MINUSONE)
{
}

void ErrorIO::setEofMode(EOFMode eofMode)
{
	m_eofMode = eofMode;
}

int ErrorIO::readChar(int originalValue)
{
	switch (m_eofMode)
	{
	case EOF_ZERO:
		return 0;
				
	case EOF_NOCHANGE:
		return originalValue;

	case EOF_MINUSONE:
	default:
		return -1;
	}
}

void ErrorIO::writeChar(int value)
{
	writef("%c", value);
}

void ErrorIO::writef(const char * format, ...)
{
	va_list args;
	va_start(args, format);
	vfprintf(stderr, format, args);
	fflush(stderr);
	vDebugLog(format, args);
	va_end(args);
}