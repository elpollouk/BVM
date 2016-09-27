#ifndef INC_DEBUG_H
#define INC_DEBUG_H

#define LL_NONE		0
#define LL_ERROR	1
#define LL_WARN		2
#define LL_INFO		3
#define LL_DEBUG	4
#define LL_TRACE	5

#if defined(LOG_LEVEL) && (LOG_LEVEL != LL_NONE)

#include <stdarg.h>

void DebugLog(const char * message, ...);
void vDebugLog(const char * message, va_list args);

#define LOG(level, system, message, ...) do { if (level <= LOG_LEVEL) DebugLog(#level ": " system ": " message, ##__VA_ARGS__); } while (0)

#else

#define vDebugLog(message, ...)
#define LOG(level, system, message, ...)

#endif

#if !defined(LOG_SYSTEM)
#define LOG_SYSTEM "none"
#endif

#define LOG_ERROR(message, ...) LOG(LL_ERROR, LOG_SYSTEM, message, ##__VA_ARGS__)
#define LOG_WARN(message, ...) LOG(LL_WARN, LOG_SYSTEM, message, ##__VA_ARGS__)
#define LOG_INFO(message, ...) LOG(LL_INFO, LOG_SYSTEM, message, ##__VA_ARGS__)
#define LOG_DEBUG(message, ...) LOG(LL_DEBUG, LOG_SYSTEM, message, ##__VA_ARGS__)
#define LOG_TRACE(message, ...) LOG(LL_TRACE, LOG_SYSTEM, message, ##__VA_ARGS__)

#endif
