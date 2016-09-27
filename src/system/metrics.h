#ifndef INC_METRICS_H
#define INC_METRICS_H

#include <inttypes.h>

class IO;

class Metrics
{
public:
	Metrics() :
		providedMetrics(NONE),
		numCycles(0),
		highestMemory(0),
		highestValue(0),
		lowestValue(0),
		bytesIn(0),
		bytesOut(0),
		optimisationPasses(0),
		finalProgramSize(0)
	{
	}

	enum AvailableMetrics
	{
		NONE				= 0,

		NUMCYCLES			= 1 << 0,
		HIGHESTMEMORY		= 1 << 1,
		HIGHESTVALUE		= 1 << 2,
		LOWESTVALUE			= 1 << 3,
		BYTES_IN			= 1 << 4,
		BYTES_OUT			= 1 << 5,
		LOAD_TIME_MS		= 1 << 6,
		OPTIMISATION_PASSES	= 1 << 7,
		FINAL_PROGRAM_SIZE	= 1 << 8,

		EXECUTION			= NUMCYCLES | HIGHESTMEMORY | HIGHESTVALUE | LOWESTVALUE,
		LOAD				= LOAD_TIME_MS | OPTIMISATION_PASSES | FINAL_PROGRAM_SIZE,
	};

	unsigned int			providedMetrics;

	uint64_t				numCycles;
	unsigned int			highestMemory;
	int						highestValue;
	int						lowestValue;
	unsigned int			bytesIn;
	unsigned int 			bytesOut;
	unsigned int			loadTimeMs;
	unsigned int			optimisationPasses;
	unsigned int			finalProgramSize;

	void					dump(IO& io) const;
};


#endif
