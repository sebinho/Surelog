//`include "elink_regmap.v"
module dut(/*AUTOARG*/
   // Outputs
   dut_active, clkout, wait_out, access_out, packet_out,
   // Inputs
   clk1, clk2, nreset, vdd, vss, access_in, packet_in, wait_in
   );

   //##########################################################################
   //# INTERFACE 
   //##########################################################################

   parameter AW    = 32;
   parameter ID    = 12'h810;   
   parameter S_IDW = 12; 
   parameter M_IDW = 6; 
   parameter PW    = 2*AW + 40;     
   parameter N     = 1;

   //clock,reset
   input            clk1;
   input            clk2;
   input            nreset;
   input [N*N-1:0]  vdd;
   input 	    vss;
   output 	    dut_active;
   output 	    clkout;
   
   //Stimulus Driven Transaction
   input [N-1:0]     access_in;
   input [N*PW-1:0]  packet_in;
   output [N-1:0]    wait_out;

   //DUT driven transaction
   output [N-1:0]    access_out;
   output [N*PW-1:0] packet_out;
   input [N-1:0]     wait_in;

   //##########################################################################
   //#BODY 
   //##########################################################################

   wire 	     mem_rd_wait;
   wire 	     mem_wr_wait;
   wire 	     mem_access;
   wire [PW-1:0]     mem_packet;

   /*AUTOINPUT*/
  
   // End of automatics
   /*AUTOWIRE*/
      
   assign clkout     = clk1;   
   assign dut_active = 1'b1;
   assign wait_out   = 1'b0;
   
   emailbox emailbox (.reg_rdata	(),
		      .mailbox_irq	(mailbox_irq),
		      .mailbox_wait	(),
		      // Inputs
		      .nreset		(nreset),
		      .wr_clk		(clk1),
		      .rd_clk		(clk1),
		      .emesh_access	(access_in),
		      .emesh_packet	(packet_in[PW-1:0]),
		      .reg_access	(1'b0),
		      .reg_packet	({(PW){1'b0}}),
		      .mailbox_irq_en	(1'b1)
		      );
   
endmodule
// Local Variables:
// verilog-library-directories:("." "../hdl")
// End:


