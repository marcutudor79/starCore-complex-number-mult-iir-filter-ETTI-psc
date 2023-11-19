#include <prototype.h> 

Word16 Prod(Word16 a[], Word16 b[], Word16 c[], int N)
{
	int i;
	Word32 sum;
	sum=0L;
	for(i=0;i<N;i++)
	{
		sum=L_mac(sum,a[i],b[i]);
	}
	
	for(i=0;i<N;i++)
	{
		c[i]=mult_r(a[i],b[i]);
	}
	return(round(sum));
}
