/*
 * DebugVM - A basic implementation of VM that can be used for directly debugging a BF program
 */
#ifndef INC_DEBUGVM_H
#define INC_DEBUGVM_H

#include "vm.h"

VM * constructDebugVM(VM::CellType cellType);

#endif
