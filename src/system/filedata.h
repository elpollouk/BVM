/*
 * A container for data read from a FILE object
 */
#ifndef INC_FILEDATA_H
#define INC_FILEDATA_H
#include <stdio.h>
#include "system/IDisposable.h"


class FileData : public IDisposable
{
public:
					FileData(FILE * file);
	void			dispose();

	bool			isValid() const { return (m_Data != 0); }
	const char *	getData() const { return m_Data; }
	unsigned int	getSize() const { return m_Size; }

private:
	char *			m_Data;
	unsigned int	m_Size;
};

#endif
