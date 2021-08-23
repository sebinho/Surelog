/*********************************************************************************
Copyright (c) 2021 Wavious LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

*********************************************************************************/

`ifdef SYNTHESIS
`else 
// AMS netlist generated by the AMS Unified netlister
// IC subversion:  IC6.1.8-64b.500.14 
// Xcelium version: 20.09-s001
// Copyright(C) 2005-2009, Cadence Design Systems, Inc
// User: shadzibabic Pid: 15762
// Design library name: wphy_gf12lp_ips_sim_lib
// Design cell name: wphy_clk_div_4ph_10g_dlymatch_svt_tb
// Design view name: config_vlog
// Solver: Spectre



// Library - wavshared_gf12lp_dig_lib, Cell - wphy_clk_div_4ph_10g_dlymatch_svt_INV_DIFF_D2_GL16_RVT,
//View - schematic
// LAST TIME SAVED: Oct  6 23:00:35 2020
// NETLIST TIME: Oct 27 01:13:17 2020
`timescale 1ps / 1ps 




 

module wphy_clk_div_4ph_10g_dlymatch_svt_INV_DIFF_D2_GL16_RVT (out1b, out2b, vdd, vss, in1, in2);

output  out1b, out2b;

inout  vdd, vss;

input  in1, in2;


wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV1 ( .in(in2), .vss(vss), .out(out2b), .vdd(vdd));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV0 ( .in(in1), .vss(vss), .out(out1b), .vdd(vdd));

endmodule
// Library - wavshared_gf12lp_dig_lib, Cell - wphy_clk_div_4ph_10g_dlymatch_svt_INVT_DIFF_D2_GL16_RVT,
//View - schematic
// LAST TIME SAVED: Oct  2 12:19:54 2020
// NETLIST TIME: Oct 27 01:13:17 2020
`timescale 1ps / 1ps 




 

module wphy_clk_div_4ph_10g_dlymatch_svt_INVT_DIFF_D2_GL16_RVT (out1b, out2b, vdd, vss, en, enb, in1, 
    in2);

output  out1b, out2b;

inout  vdd, vss;

input  en, enb, in1, in2;


wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INV1 ( .out(out2b), .en(en), .enb(enb), .vss(vss), 
    .in(in2), .vdd(vdd));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INV0 ( .out(out1b), .en(en), .enb(enb), .vss(vss), 
    .in(in1), .vdd(vdd));

endmodule
// Library - wphy_gf12lp_ips_lib, Cell -
//wphy_clk_div_4ph_10g_dlymatch_svt, View - schematic
// LAST TIME SAVED: Sep 17 20:57:45 2020
// NETLIST TIME: Oct 27 01:13:17 2020
`timescale 1ps / 1ps 




 

`endif //SYNTHESIS 
module wphy_clk_div_4ph_10g_dlymatch_svt (o_clk0, o_clk90, o_clk180, 
    o_clk270,   i_byp, i_clk0, i_clk90, i_clk180, i_clk270
`ifdef WLOGIC_NO_PG 
`else  
 ,vdda  
 ,vss 
`endif //WLOGIC_NO_PG 
);

`ifdef WLOGIC_NO_PG
wire vdda;
assign vdda=1'b1;
wire vss;
assign vss=1'b0;
`else
inout vdda;
inout vss;
`endif


output  o_clk0, o_clk90, o_clk180, o_clk270;



input  i_byp, i_clk0, i_clk90, i_clk180, i_clk270;

// Buses in the design 
`ifdef SYNTHESIS 
`else

wire  [2:0]  net084;


wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT3 ( .out(nn90), .en(bypa), .enb(bypb), .vss(vss), 
    .in(clk90_byp), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT2 ( .out(nn90), .en(bypb), .enb(bypa), .vss(vss), 
    .in(x90), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT1 ( .out(nn270), .en(bypb), .enb(bypa), .vss(vss), 
    .in(x270), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT0 ( .out(nn270), .en(bypa), .enb(bypb), .vss(vss), 
    .in(clk270_byp), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT10 ( .out(nn0), .en(bypa), .enb(bypb), .vss(vss), 
    .in(clk0_byp), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT11 ( .out(nn0), .en(bypb), .enb(bypa), .vss(vss), 
    .in(x0), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT12 ( .out(nn180), .en(bypb), .enb(bypa), 
    .vss(vss), .in(x180), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT INVT13 ( .out(nn180), .en(bypa), .enb(bypb), 
    .vss(vss), .in(clk180_byp), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_LATRES_D1_GL16_RVT LAT3 ( .tiehi(tiehi), .tielo(tielo), .vss(vss), 
    .vdd(vdda), .rstb(tiehi), .d(clk270), .clkb(tiehi), .clk(tielo), 
    .q(net094));

wphy_clk_div_4ph_10g_dlymatch_svt_LATRES_D1_GL16_RVT LAT1 ( .tiehi(tiehi), .tielo(tielo), .vss(vss), 
    .vdd(vdda), .rstb(tiehi), .d(clk90), .clkb(tiehi), .clk(tielo), 
    .q(net0123));

wphy_clk_div_4ph_10g_dlymatch_svt_LATRES_D1_GL16_RVT LAT2 ( .tiehi(tiehi), .tielo(tielo), .vss(vss), 
    .vdd(vdda), .rstb(tiehi), .d(clk), .clkb(tiehi), .clk(tielo), 
    .q(net076));

wphy_clk_div_4ph_10g_dlymatch_svt_LATRES_D1_GL16_RVT LAT0 ( .tiehi(tiehi), .tielo(tielo), .vss(vss), 
    .vdd(vdda), .rstb(tiehi), .d(clkb), .clkb(tiehi), .clk(tielo), 
    .q(net078));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV28 ( .in(net098), .vss(vss), .out(net045), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV26_1 ( .in(nn270), .vss(vss), .out(o_clk270), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV26_0 ( .in(nn270), .vss(vss), .out(o_clk270), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV25_1 ( .in(nn90), .vss(vss), .out(o_clk90), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV25_0 ( .in(nn90), .vss(vss), .out(o_clk90), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV23_1 ( .in(n2), .vss(vss), .out(x270), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV23_0 ( .in(n2), .vss(vss), .out(x270), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV22_1 ( .in(p2), .vss(vss), .out(x90), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV22_0 ( .in(p2), .vss(vss), .out(x90), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV21 ( .in(net0183), .vss(vss), .out(n2), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV18 ( .in(net0193), .vss(vss), .out(net0183), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV29 ( .in(net094), .vss(vss), .out(net0182), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV17 ( .in(net0182), .vss(vss), .out(p2), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV11_1 ( .in(n1), .vss(vss), .out(x180), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV11_0 ( .in(n1), .vss(vss), .out(x180), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV20 ( .in(bypb), .vss(vss), .out(bypa), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV19 ( .in(i_byp), .vss(vss), .out(bypb), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV27 ( .in(net078), .vss(vss), .out(net088), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV14 ( .in(net045), .vss(vss), .out(n1), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV9_1 ( .in(p1), .vss(vss), .out(x0), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV9_0 ( .in(p1), .vss(vss), .out(x0), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV5 ( .in(net088), .vss(vss), .out(p1), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV2_1 ( .in(nn180), .vss(vss), .out(o_clk180), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV2_0 ( .in(nn180), .vss(vss), .out(o_clk180), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV12_1 ( .in(nn0), .vss(vss), .out(o_clk0), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT INV12_0 ( .in(nn0), .vss(vss), .out(o_clk0), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I30 ( .tiehi(tiehi), .tielo(tielo), 
    .in(p2), .vss(vss), .out(n2), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I29 ( .tiehi(tiehi), .tielo(tielo), 
    .in(n2), .vss(vss), .out(p2), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I34 ( .tiehi(tiehi), .tielo(tielo), 
    .in(nn0), .vss(vss), .out(nn180), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I33 ( .tiehi(tiehi), .tielo(tielo), 
    .in(nn180), .vss(vss), .out(nn0), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I28 ( .tiehi(tiehi), .tielo(tielo), 
    .in(x90), .vss(vss), .out(x270), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I27 ( .tiehi(tiehi), .tielo(tielo), 
    .in(x270), .vss(vss), .out(x90), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I24 ( .tiehi(tiehi), .tielo(tielo), 
    .in(n1), .vss(vss), .out(p1), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I23 ( .tiehi(tiehi), .tielo(tielo), 
    .in(p1), .vss(vss), .out(n1), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I25 ( .tiehi(tiehi), .tielo(tielo), 
    .in(x0), .vss(vss), .out(x180), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel I26 ( .tiehi(tiehi), .tielo(tielo), 
    .in(x180), .vss(vss), .out(x0), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT_Mmod_nomodel I36 ( .in(nn270), .vss(vss), .out(nn90), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT_Mmod_nomodel I35 ( .in(nn90), .vss(vss), .out(nn270), 
    .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_PU_D1_GL16_RVT PU3 ( .vdd(vdda), .en(bypb), .y(clk90));

wphy_clk_div_4ph_10g_dlymatch_svt_PU_D1_GL16_RVT PU0 ( .vdd(vdda), .en(bypb), .y(clk));

wphy_clk_div_4ph_10g_dlymatch_svt_PD_D1_GL16_RVT PD3 ( .vss(vss), .enb(bypa), .y(clk270));

wphy_clk_div_4ph_10g_dlymatch_svt_PD_D1_GL16_RVT PD0 ( .vss(vss), .enb(bypa), .y(clkb));

wphy_clk_div_4ph_10g_dlymatch_svt_TIELO_D2_GL16_RVT TIELO0 ( .tielo(tielo), .vss(vss), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE2_2 ( .y(net084[2]), .a(net0123), .en(vdda), 
    .enb(vss), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE2_1 ( .y(net084[1]), .a(net0123), .en(vdda), 
    .enb(vss), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE2_0 ( .y(net084[0]), .a(net0123), .en(vdda), 
    .enb(vss), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE0_2 ( .y(net098), .a(a1), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE0_1 ( .y(net098), .a(a1), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE0_0 ( .y(net098), .a(a1), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE3_2 ( .y(net0193), .a(net084[2]), .en(vdda), 
    .enb(vss), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE3_1 ( .y(net0193), .a(net084[1]), .en(vdda), 
    .enb(vss), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XGATE3_0 ( .y(net0193), .a(net084[0]), .en(vdda), 
    .enb(vss), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XG0_2 ( .y(a1), .a(net076), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XG0_1 ( .y(a1), .a(net076), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT XG0_0 ( .y(a1), .a(net076), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_TIEHI_D2_GL16_RVT TIEHI1 ( .tiehi(tiehi), .vss(vss), .vdd(vdda));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_DIFF_D2_GL16_RVT INV10 ( .out1b(clk2), .out2b(clk2b), 
    .in2(i_clk270), .in1(i_clk90), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_INV_DIFF_D2_GL16_RVT INV6 ( .out1b(clk1), .out2b(clk1b), 
    .in2(i_clk180), .in1(i_clk0), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_DIFF_D2_GL16_RVT INV16 ( .en(bypa), .out1b(clk90_byp), 
    .out2b(clk270_byp), .in2(clk2b), .enb(bypb), .in1(clk2), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_DIFF_D2_GL16_RVT INV13 ( .en(bypb), .out1b(clk90), .out2b(clk270), 
    .in2(clk2b), .enb(bypa), .in1(clk2), .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_DIFF_D2_GL16_RVT INV7 ( .en(bypa), .out1b(clk0_byp), 
    .out2b(clk180_byp), .in2(clk1b), .enb(bypb), .in1(clk1), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_4ph_10g_dlymatch_svt_INVT_DIFF_D2_GL16_RVT INV0 ( .en(bypb), .out1b(clk), .out2b(clkb), 
    .in2(clk1b), .enb(bypa), .in1(clk1), .vdd(vdda), .vss(vss));


`ifdef WPHY_ANA_TIMING

specify

  (i_clk0    => o_clk0)      = 131;
  (i_clk90   => o_clk90)     = 131;
  (i_clk180   => o_clk180)   = 131;
  (i_clk270   => o_clk270)   = 131;

endspecify

`endif

`endif //SYNTHESIS 
endmodule
`ifdef SYNTHESIS
`else
// Library - wphy_gf12lp_ips_sim_lib, Cell -
//wphy_clk_div_4ph_10g_dlymatch_svt_tb, View - schematic
// LAST TIME SAVED: Oct 27 00:26:52 2020
// NETLIST TIME: Oct 27 01:13:17 2020
`timescale 1ps / 1ps 




 




 // END AMS-UNL Netlist

//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_TIEHI_D2_GL16_RVT" "systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_TIEHI_D2_GL16_RVT ( tiehi
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd
`endif //WLOGIC_MODEL_NO_PG
);


  output tiehi;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;

  assign tiehi = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign tiehi =  1'b1 ;

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT" "systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_XG_D1_GL16_RVT ( y, en, enb, a
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
); 

  input a;
  input en;
  output y;
  input enb;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG


assign y = (en && ~enb) ? a:1'bz;

endmodule
//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_TIELO_D2_GL16_RVT" "systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_TIELO_D2_GL16_RVT ( tielo
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd
`endif //WLOGIC_MODEL_NO_PG
);

  output tielo;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;

  assign tielo = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign tielo =  1'b0 ;


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_PD_D1_GL16_RVT" "systemVerilog"

module wphy_clk_div_4ph_10g_dlymatch_svt_PD_D1_GL16_RVT( enb, y
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss
`endif //WLOGIC_MODEL_NO_PG
); 

  input y;
  input enb;

`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss ;
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign y =  enb ? 1'b0 : 1'bz;

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_PU_D1_GL16_RVT" "systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_PU_D1_GL16_RVT ( en, y
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd 
`endif //WLOGIC_MODEL_NO_PG
);

  input y;
  input en;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = vdd;
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

 assign y = en ? 1'bz : 1'b1;

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "INV_D2_GL16_LVT_Mmod_nomodel"
//"systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT_Mmod_nomodel( in, out
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  output out;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel"
//"systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_INV_D1_GL16_RVT_Mmod_nomodel ( in, out, tiehi, tielo
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  output out;
  input tiehi;
  input tielo;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT" "systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_INV_D2_GL16_RVT ( in, out
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  output out;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign out = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

   assign out = ~in;

endmodule
//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "LATRES_D1_GL16_LVT" "systemVerilog"


`timescale 1ps/1ps
module wphy_clk_div_4ph_10g_dlymatch_svt_LATRES_D1_GL16_RVT( q, clk, clkb, d, rstb
`ifdef WLOGIC_MODEL_NO_TIE
`else
, tiehi, tielo 
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PGL
);

  input clk;
  output q;
  input d;
  input clkb;
  input rstb;
`ifdef WLOGIC_MODEL_NO_TIE
`else
  input tiehi;
  input tielo;
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

  wire #0 polarity_ok = clk^clkb;

`ifdef WLOGIC_MODEL_NO_TIE
`else
  wire signals_ok;
  assign signals_ok = tiehi & ~tielo ;

  assign q = (signals_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_NO_TIE

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;

  assign q = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG


assign #1  q = polarity_ok ? 
                           (~rstb) ? 
                                 1'b0 
                                 : (clkb) ? 
                                          (d===1'bx) ? $random : d&rstb
                                          : q 
                           : 1'bx;

endmodule

//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "DUMLOAD_D1_GL16_RVT" "systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_DUMLOAD_D2_GL16_RVT ( inp, inn
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
); 

  input inp;
  input inn;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT" "systemVerilog"


module wphy_clk_div_4ph_10g_dlymatch_svt_INVT_D2_GL16_RVT( in, out, en, enb
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  input en, enb;
  output out;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

  wire out;

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign out = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign out= (en) ? ~in:1'bz;


endmodule
`endif //SYNTHESIS
