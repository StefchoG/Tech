#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>

int main()
{
	mkfifo("namedPipe", 0666);
	int fd = open("namedPipe", O_WRONLY);
	char* s = "Input from process 1!";

	while(1)
	write( fd, s, strlen(s) );
		
	return 0;
}
