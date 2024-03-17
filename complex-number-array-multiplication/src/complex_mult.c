#include <prototype.h>

/* prototypes of global functions */
void complex_mult(Word16 *out, Word16 *in,Word16 m, Word16 sc_re, Word16 sc_im);


/* definiton of global fucntions */
void complex_mult(Word16 *out, Word16 *in,Word16 m, Word16 sc_re, Word16 sc_im)
{
	/* declare aligned vectors of input/output */
	#pragma align *in 8
	#pragma align *out 8	
	
	/* initialize buffers to store the mult results */
	Word16 shResult1 = 0;
	Word16 shResult2 = 0;
	Word16 shResult3 = 0;
	Word16 shResult4 = 0;
	short i          = 0;
	
	for (i = 0; i < m; i += 2)	
	{			
		
		/* first optimized cycle 4 alu operations + 2 mov */
		/* compute the real part */
		/* compute the first multiplication in_re * sc_re */
		shResult1 = mult(*(in+i), sc_re);
						
		/* compute the second multiplication in_im * sc_im */
		shResult2 = mult(*(in+i+1), sc_im);
		
		/* compute the imaginary part */
		/* compute the third multiplication in_im * sc_re */		
		shResult3 = mult(*(in+i+1), sc_re);
					
		/* compute the fourth multiplication in_re * sc_im */
		shResult4 = mult(*(in+i), sc_im);		
	
		
		/* second optimized cycle 4 operations */
		*(out+i)  = sub(shResult1, shResult2);
		*(out+i+1)= add(shResult3,shResult4);
		*(out+i)  = shr(*(out+i), 1);
		*(out+i+1)= shr(*(out+i+1), 1);				    		
	}
}

