#include <stdlib.h>

void leak1()
{
	char *c = malloc(1);
}

void leak2()
{
	char *c = malloc(2);
}

char *leak4()
{
	return malloc(4);
}

char *leak8()
{
	return malloc(8);
}
