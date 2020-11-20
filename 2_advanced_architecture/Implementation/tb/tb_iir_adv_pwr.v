/**********************************************************************
** TESTBENCH FOR IIR FILTER - Loockahead architecture
** Modified version of the "tb_fir.v" example code
**
** Project: Lab 1.2
** Authors: Group 32 (Chatrasi, Di Bella, Zangeneh)
***********************************************************************/


//timescale 1ns

module tb_iir ();
	
   wire CLK_i;
   wire END_SIM_i;
   reg RST_n_i;
   reg EN_i;

   wire VIN_i;
   wire [7:0] DIN_i;
   wire [7:0] H0_i;
   wire [7:0] H1_i;
   wire [7:0] H2_i;
   wire [7:0] H3_i;
   wire [7:0] H4_i;   

   wire VOUT_i;
   wire [7:0] DOUT_i;
   wire ERR_i;
   
   clk_gen CG(
		 .END_SIM(END_SIM_i),
  	     .CLK(CLK_i));

   data_maker SM(
		 .CLK(CLK_i),
	     .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT(DIN_i),
		 .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
		 .H4(H4_i),
		 .END_SIM(END_SIM_i),
		 .EN(EN_i));

   filter_adv DUT(
		 .DIN(DIN_i),
		 .b0(H0_i),
	     .b1(H1_i),
	     .b2(H2_i),
	     .b3(H3_i),
	     .a1(H4_i),
		 .CLK(CLK_i),
		 .VIN(VIN_i),
	     .RST_n(RST_n_i),
         .DOUT(DOUT_i),
 		 .VOUT(VOUT_i));

   data_sink DS(
		 .CLK(CLK_i),
		 .RST_n(RST_n_i),
		 .VIN(VOUT_i),
		 .DIN(DOUT_i),
		 .ERR(ERR_i));  

	
	// Initial reset
	initial begin 
		EN_i = 1;
		RST_n_i = 0; #2
		RST_n_i = 1; #28
		EN_i = 0; 	 #20
		EN_i = 1;	 
	end
   initial begin
		$read_lib_saif("./saif/NangateOpenCellLibrary.saif");
		$set_gate_level_monitoring("on");
		$set_toggle_region(UUT);
		$toggle_start;
	end
	always @ ( END_SIM_i ) begin
		if (END_SIM_i) begin
		$toggle_stop; $
		toggle_report("./saif/iir_adv_back.saif", 1.0e-9, "tb_iir_adv_pwr.UUT");
		end
	end



endmodule

		   
