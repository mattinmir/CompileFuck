#include "mem.hpp"
#include <stdio.h>
mem::mem()
{
	memory = new char[30000];
	index = 0;
}

mem::mem()
{
	delete[] memory;
}

void mem::incptr()
{
	index++;
}

void mem::decptr()
{
	index--;
}

void mem::incval()
{
	memory[index]++;
}

void mem::decval()
{
	memory[index]--;
}

void mem::store(char input)
{
	memory[index] = input;
}

char mem::get()
{
	return memory[index];
}