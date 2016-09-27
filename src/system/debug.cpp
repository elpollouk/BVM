#include "debug.h"

#define DEBUG_LOG_FILE	"debuglog.txt"

#if defined(LOG_LEVEL) && (LOG_LEVEL != LL_NONE)

#include <stdio.h>

static bool		s_LogInitialised = false;
static FILE *	s_LogFile = nullptr;

static bool initDebugLog()
{
	if (!s_LogInitialised)
	{
		s_LogInitialised = true;
		s_LogFile = fopen(DEBUG_LOG_FILE, "ab");
		if (s_LogFile != nullptr)
		{
			if (ftell(s_LogFile) != 0)
			{
				fprintf(s_LogFile, "--------------------------------------------------------------------------------\n\n");
			}
		}
		else
		{
			fprintf(stderr, "Failed to open %s for writing.\n", DEBUG_LOG_FILE);
		}
	}

	return s_LogFile != nullptr;
}

void DebugLog(const char * message, ...)
{
	va_list args;
	va_start(args, message);
	vDebugLog(message, args);
	va_end(args);
}

void vDebugLog(const char * message, va_list args)
{
	if (initDebugLog())
	{
		vfprintf(s_LogFile, message, args);
		fflush(s_LogFile);
	}
}

#endif