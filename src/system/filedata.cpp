#include "filedata.h"

#include <stdlib.h>

FileData::FileData(FILE * file)
{
	// Get the file size
	fseek(file, 0, SEEK_END);
	size_t fileSize = ftell(file);
	fseek(file, 0, SEEK_SET);
	
	// Allocate buffer for file data
	m_Data = (char*)malloc(fileSize);
	size_t readSize = fread(m_Data, 1, fileSize, file);
	fclose(file);

	if (readSize == fileSize)
	{
		m_Size = (unsigned int)fileSize;
	}
	else
	{
		// Dispose this object if we couldn't read the file
		dispose();
	}
}

void FileData::dispose()
{
	if (m_Data)
	{
		free(m_Data);
		m_Data = NULL;
		m_Size = (unsigned int)-1;
	}
}