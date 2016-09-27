#include "metrics.h"

#include "io.h"

void Metrics::dump(IO& io) const
{
	if (providedMetrics != NONE)
	{
		io.writef("Execution Metrics:\n");
		if (providedMetrics & NUMCYCLES)
			io.writef("  Num Cycles              = %llu\n", numCycles);
		if (providedMetrics & HIGHESTMEMORY)
			io.writef("  Highest Memory Location = %u\n", highestMemory);
		if (providedMetrics & HIGHESTVALUE)
			io.writef("  Highest Value           = %d\n", highestValue);
		if (providedMetrics & LOWESTVALUE)
			io.writef("  Lowest Value            = %d\n", lowestValue);
		if (providedMetrics & BYTES_IN)
			io.writef("  Bytes In                = %u\n", bytesIn);
		if (providedMetrics & BYTES_OUT)
			io.writef("  Bytes Out               = %u\n", bytesOut);
		if (providedMetrics & LOAD_TIME_MS)
		{
			unsigned int seconds = loadTimeMs / 1000;
			unsigned int mSeconds = (loadTimeMs - (seconds * 1000));

			if (seconds)
			{
				io.writef("  Load Time               = %u.%03us\n", seconds, mSeconds);
			}
			else
			{
				io.writef("  Load Time               = %ums\n", mSeconds);
			}
		}
		if (providedMetrics & OPTIMISATION_PASSES)
			io.writef("  Optimisation Passes     = %u\n", optimisationPasses);
		if (providedMetrics & FINAL_PROGRAM_SIZE)
			io.writef("  Final Program Size      = %u\n", finalProgramSize);
	}
	else
	{
		io.writef("No metrics available.\n");
	}

}