#include<dirent.h>
#include<stdio.h>
#include<sys/stat.h>

int main(int argc, char* arg[])
{
	while(argc-->1){
		system(arg[argc]);
	}

}
