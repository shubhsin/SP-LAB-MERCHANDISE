#include<dirent.h>
#include<stdio.h>
#include<sys/stat.h>

int main(int argc, char* arg[])
{

	struct dirent *de;
	DIR * dr = opendir(arg[1]);

	if(dr ==NULL){
		printf("INVALID");
		return;
	}
	while((de=readdir(dr))!=NULL)
		printf("%s\n",de->d_name);
	closedir(dr);
	return 0;

}
