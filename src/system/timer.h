#ifndef INC_TIMER_H
#define INC_TIMER_H

#include <sys/time.h>

class Timer
{
public:
					Timer();
	void			reset();
	unsigned int	elapsedMs();

private:
	timeval			m_StartTime;
};

#endif
