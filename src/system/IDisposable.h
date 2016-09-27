/*
 * Base class for all disposable objects.
 * Defines a dispose method and calls it when the destructor is invoked.
 */
#ifndef INC_IDISPOSABLE_H
#define INC_IDISPOSABLE_H

class IDisposable
{
public:
	virtual void dispose() {};
	virtual ~IDisposable() { dispose(); }
};

#endif