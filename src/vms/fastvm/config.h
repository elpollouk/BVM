#ifndef INC_FVMCONFIG_H
#define INC_FVMCONFIG_H

#define LOG_SYSTEM					"FastVM"
#ifdef DEBUG
#define ENABLE_EXECUTION_METRICS	true
#else
#define ENABLE_EXECUTION_METRICS	false
#endif

#if ENABLE_EXECUTION_METRICS
#define METRICS(code)	code
#else
#define METRICS(code)
#endif

#endif
