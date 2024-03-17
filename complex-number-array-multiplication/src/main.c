#include <prototype.h> 
#include <stdio.h> 
#include "constants.h"
#include "functions.h"

int main()
{
	
	/* declare variables */
	Word16 in[DataBlockSize] = {0};
	
	Word16 in_aligned[DataBlockSize] = {0};
	#pragma align in_aligned 8
	
	Word16 out[DataBlockSize]= {0};
	#pragma align out 8
		
	Word16 sc_re 			 = 0;
	Word16 sc_im             = 0;
	FILE *fp                 = NULL;
	short i 				 = 0;
	
	/* open the file generated in matlab */
	fp=fopen("../input.dat","r+b");
	
	/* read from the file */
	fread(in,sizeof(Word16),DataBlockSize,fp);
	if (!fp)
	    printf("\nNu s-a deschis input.dat");
	fclose(fp);
	
	/* assign the real and the imaginary part from the buffer */
	sc_re = in[0];
	sc_im = in[1];
	
	/* generate the in_aligned[] vector */
	memcpy(&in_aligned[0], &in[2], DataBlockSize-2 );
	
	/* compute the output */
	complex_mult(&out[0], &in[2], DataBlockSize - 2, sc_re, sc_im);
	
	/* print the results to the console */
	printf("Input: in_re[], in_im[], sc_re, sc_im.   Result out_re[], out_im[]\n");
	
	for (i = 0; i < DataBlockSize - 2; i++)
	{
		printf("%d, %d, %d, %d, %d, %d\n", in[i+2], in[i+3], sc_re, sc_im, out[i], out[i+1]);	
	}     

	/* create an output file */
	fp=fopen("../output.dat","w+b");
	
	/* write the resulting vector in it */
	fwrite(out,sizeof(Word16),DataBlockSize - 2,fp);
	if (!fp)
	    printf("\nNu s-a deschis  output.dat");
	fclose(fp);


	return(0);
}
