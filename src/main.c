#include <prototype.h> 
#include <stdio.h> 
#include "constants.h"
#include "functions.h"

int main()
{
	Word16 a[DataBlockSize],b[DataBlockSize];
	Word16 c[DataBlockSize],result;
	int i;
	FILE *fp;

	fp=fopen("../a.dat","r+b");
	fread(a,sizeof(Word16),DataBlockSize,fp);
	if (!fp)
	    printf("\nNu s-a deschis a.dat");
	fclose(fp);

	fp=fopen("../b.dat","r+b");
	fread(b,sizeof(Word16),DataBlockSize,fp);
	if (!fp)
	    printf("\nNu s-a deschis b.dat");
	fclose(fp);

	result = Prod(a,b,c, DataBlockSize);

	printf("Input a[]   b[]   Product c[]\n");
	for (i = 0; i < DataBlockSize; i++) 
      printf("  %6d   %6d    %6d\n",a[i],b[i],c[i]);

	printf("Result %d\n",result);

	fp=fopen("../c.dat","w+b");
	fwrite(c,sizeof(Word16),DataBlockSize,fp);
	if (!fp)
	    printf("\nNu s-a deschis  c.dat");
	fclose(fp);

	fp=fopen("../result.dat","w+b");
	fprintf(fp,"%d",result);
	if (!fp)
	    printf("\nNu s-a deschis  result.dat");
	fclose(fp);

	return(0);
}
