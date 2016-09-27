/*
 * IO handler for writing to the error steam.
 * This is mainly intended to be used by the exception handler.
 */
#ifndef INC_ERRORIO_H
#define INC_ERRORIO_H

#include "io.h"

class ErrorIO : public IO
{
public:		
	ErrorIO();
	void setEofMode(EOFMode eofMode);
	int readChar(int currentValue);
	void writeChar(int value);
	void writef(const char * format, ...);
	
private:
	EOFMode m_eofMode;
};

#endif