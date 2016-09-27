/*
 * Exception class for errors encountered by a VM
 */
#ifndef INC_VMEXCEPTION_H
#define INC_VMEXCEPTION_H

#include <stdarg.h>

class VM;

#define MAX_MESSAGE_SIZE	1024

class VmException
{
public:
					VmException(const char * message, ...);
					VmException(const VM * vm, const char * message, ...);
	// Returns a error message
	const char *	getMessage() const;
	// Returns the VM that threw the exception
	const VM *		getVM() const;

private:
	void			formatMessage(const char * message, va_list args);

	char			m_message[MAX_MESSAGE_SIZE];
	const VM *		m_vm;
};

#endif