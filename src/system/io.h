#ifndef INC_IO_H
#define INC_IO_H

#include "IDisposable.h"

class IO : public IDisposable
{
public:
	enum EOFMode
	{
		EOF_ZERO,
		EOF_MINUSONE,
		EOF_NOCHANGE,
	};
	
	virtual int readChar(int currentChar) = 0;
	virtual void writeChar(int value) = 0;
	virtual void writef(const char * format, ...) = 0;
};

#endif