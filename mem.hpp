#pragma once


class mem
{
private:
	char* memory;
	int index;

public:
	mem();
	~mem();
	void incptr(); // >
	void decptr(); // <
	void incval(); // +
 	void decval(); // -
	void store(char input); // ,
	char get(); // .


};

