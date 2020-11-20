/*********************************************************************************************
 * IIR filter - Direct Form II C Model (1-LookAhead architecture)
 * Autohrs:         ISA lab group 32 (Chatrasi, Di Bella, Zangeneh)
 * Last modified:   16/11/2020
 * Description:     C model of an 8-bit I order IIR filter in Direct-Form-II.
 *                  The program takes the input samples from a list contained 
 *                  into the input file and writes results into an output file.
 * Arguments:       <input_file>.txt -> Input file containing the input samples.
 *                  <output_file>.txt -> Output file where te output samples will be written.
 *
 * NOTES			During the development of the filter, the inputs for this script were:
 *					../results/samples_adv.txt ../results/resultsc_adv.txt
 *********************************************************************************************/              


#include<stdio.h>
#include<stdlib.h>

#define N 1 /// order of the filter 
#define NB 8  /// number of bits

const int b0 = 53;
const int b1 = 53;
const int b2 = -9;
const int b3 = -9;
const int a1 = 3;



/// Perform fixed point filtering assuming direct form II
///\param x is the new input sample
///\return the new output sample
int myfilter_II(int x)
{
    static int sw1,sw2;              // Register
    static int first_run = 0;   // Register reset
    int w;                      // Intermediate value
    int y;                      // output sample
    int fb,ff = 0;              // feedback & feedforward values  
	int mul1,mul2,mul3,mul4;	// Multiplications output
	
	//int ab0 = (b0*a) ;
	//int ab1 = (b*a);
	//int a2 = (a*a);
	
	//printf("%d %d %d\n",ab0,ab1,a2);

    if(!first_run)
    {
        sw1 = 0;         //Reset the register
		sw2 = 0;
        first_run = 1;  // This part will not be executed again
    }
	
	// Feedback computation
	fb = (sw2 * a1) >> (NB+1);
	
	w = x - fb;
	
	// Feedforward computation
	
	mul1 = (w * b0) >> (NB+1);
	mul2 = (sw1 * b1) >> (NB+1);
	mul3 = (sw1 * b2) >> (NB+1);
	mul4 = (sw2 * b3) >> (NB+1);
	
	// Result:
	// y = mul1 + mul2 - mul3 - mul4;
	ff += mul2;
	ff -= mul3;
	ff -= mul4;
	y = mul1 + ff;
	
	y = y << 2;
	
	printf("%d\n", y);
	
	sw2 = sw1;
	sw1 = w;
	
    return y;
}


int main(int argc, char **argv)
{
    FILE *fp_in;
    FILE *fp_out;

    int x;
    int y;

    /// check the command line
    if (argc != 3)
    {
        printf("Use: %s <input_file> <output_file>\n", argv[0]);
        exit(1);
    }

    /// open files
    fp_in = fopen(argv[1], "r");
    if (fp_in == NULL)
    {
        printf("Error: cannot open %s\n");
        exit(2);
    }
    fp_out = fopen(argv[2], "w");

    /// get samples and apply filter
    fscanf(fp_in, "%d", &x);
    do{
        y = myfilter_II(x);
        fprintf(fp_out,"%d\n", y);
        fscanf(fp_in, "%d", &x);
    } while (!feof(fp_in));

    fclose(fp_in);
    fclose(fp_out);

    return 0;
}
