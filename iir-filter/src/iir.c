#include <prototype.h> 
#include <stdio.h> 
#define DataBlockSize 160	/* dimensiunea unui bloc de date */
#define BlockLength 50		/* numarul de blocuri de date */

Word16 x[DataBlockSize],y[DataBlockSize];
Word16 w  = 0;
Word16 w1 = 0; 
Word16 w2 = 0;
Word16 w3 = 0;
Word16 w4 = 0;

Word16 b[]={WORD16(0.0714/2), WORD16(0.0024/2), WORD16(0.1154/2), WORD16(0.0024/2), WORD16(0.0714/2)};
Word16 a[]={WORD16(1.6114/2), WORD16(1.8788/2), WORD16(0.9846/2), WORD16(0.3078/2)};

Word32 sum;

int main()
{
	/* Declare the local variables */
	short n,i;
	FILE *fpx,*fpy;

	/* Open the file with the input signal from Matlab */
	fpx=fopen("../input.dat","r+b");
	if (!fpx)
	    printf("\nNu s-a deschis");
	
	/* Open the file with the filtered signal computed 
	   in this program */
	fpy=fopen("../output.dat","w+b");
	if (!fpy)
	    printf("\nNu s-a deschis");
	
	/* Do the filtering */
	for (i=0; i<BlockLength; i++)
	{
		fread(x,sizeof(Word16),DataBlockSize,fpx);

		for (n=0; n<DataBlockSize; n++)
		{
			sum = L_deposit_h(shr(x[n], 1));
			sum = L_msu(sum,a[0], w1);
			sum = L_msu(sum,a[1], w2);
			sum = L_msu(sum,a[2], w3);
			sum = L_msu(sum,a[3], w4);
			
			w = shl(round(sum), 1);
			
			sum = L_mult(b[0],    w);
			sum = L_mac(sum,b[1], w1);
			sum = L_mac(sum,b[2], w2);
			sum = L_mac(sum,b[3], w3);
			
			y[n]= shl(mac_r(sum,b[4], w4), 1);
			
			w4 = w3;
			w3 = w2;
			w2 = w1;
			w1 = w;
		}

		fwrite(y,sizeof(Word16),DataBlockSize,fpy);
	}
	
	/* Close the files */
	fclose(fpx);
	fclose(fpy);

	return(0);
}
