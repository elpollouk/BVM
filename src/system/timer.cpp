#include "timer.h"

Timer::Timer()
{
	reset();
}

void Timer::reset()
{
	gettimeofday(&m_StartTime, nullptr);  
}

unsigned int Timer::elapsedMs()
{
	timeval now;
	gettimeofday(&now, nullptr);

	// Get difference in seconds as ms
	unsigned int seconds = (now.tv_sec - m_StartTime.tv_sec) * 1000;
	// diff in uSeconds as ms
	unsigned int uSeconds = (now.tv_usec - m_StartTime.tv_usec) / 1000;
	// Return the total difference
	return seconds + uSeconds;
}
