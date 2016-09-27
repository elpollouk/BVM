#include "vmexception.h"

#include <stdio.h>
#include "vms/vm.h"

VmException::VmException(const char * message, ...) :
	m_vm(NULL)
{
	va_list args;
	va_start(args, message);
	formatMessage(message, args);
	va_end(args);
}

VmException::VmException(const VM * vm, const char * message, ...) :
	m_vm(vm)
{
	va_list args;
	va_start(args, message);
	formatMessage(message, args);
	va_end(args);
}

void VmException::formatMessage(const char * message, va_list args)
{
	vsnprintf(m_message, MAX_MESSAGE_SIZE, message, args);
	m_message[MAX_MESSAGE_SIZE-1] = 0;
}

const char * VmException::getMessage() const
{
	return m_message;
}

const VM * VmException::getVM() const
{
	return m_vm;
}
