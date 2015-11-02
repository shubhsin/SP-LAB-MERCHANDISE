#include<sys/stat.h>
#include<sys/types.h>
#include<stdio.h>

int main(int argc, char *argv[])
{
	struct stat buf;

	while(argc-->1)
	{
		if(stat(argv[argc], &buf)==-1)
			printf("Error\n");
		else
		{
			if(S_ISREG(buf.st_mode))
				printf("Regular FIle\n");
			else if(S_ISDIR(buf.st_mode))
				printf("Directory\n");
			else if(S_ISFIFO(buf.st_mode))
				printf("FIFO file\n");
			else if(S_ISSOCK(buf.st_mode))
				printf("Socket file");
		}
	}
}
