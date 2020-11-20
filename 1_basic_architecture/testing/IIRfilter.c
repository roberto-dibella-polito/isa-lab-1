/*********************************************************************************************
 * IIR filter - Direct Form II C Model
 * Autohrs:         ISA lab group 32 (Chatrasi, Di Bella, Zangeneh)
 * Last modified:   17/11/2020
 * Description:     C model of an 8-bit I order IIR filter in Direct-Form-II.
 *                  The program takes the input samples from a list contained 
 *                  into the input file and writes results into an output file.
 * Arguments:       <input_file>.txt -> Input file containing the input samples.
 *                  <output_file>.txt -> Output file where te output samples will be written.
 * NOTE				During the design, the input names used were:
 *					samples.txt -> Coming from the MATLAB script
 *					resultc.txt -> Used into VHDL testbench
 *********************************************************************************************/              


#include<stdio.h>
#include<stdlib.h>

#define N 1 /// order of the filter 
#define NB 8  /// number of bits

const int b0 = 53;
const int b = 53;
const int a = -21;

/// Perform fixed point filtering assuming direct form II
///\param x is the new input sample
///\return the new output sample
int myfilter_II(int x)
{
    static int sw;              // Register
    static int first_run = 0;   // Register reset
    int w;                      // Intermediate value
    int y;                      // output sample
    int fb,ff;                  // feedback & feedforward values            

    if(!first_run)
    {
        sw = 0;         //Reset the register
        first_run = 1;  // This part will not be executed again
    }

    fb = (sw * a) >> (NB+1);    // 6 bits Compute feedback value 
    ff = (sw * b) >> (NB+1);    // Compute feedforward value 
    w = x - fb;                 // adjust 
    y = (w * b0) >> (NB+1);
    y += ff;
	
	y = y << 2;
    
	printf("x = %d, w = %d, fb = %d, fy = %d, y = %d\n",x,w,fb,ff,y);
	
    sw = w;     // Update register register
    
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
