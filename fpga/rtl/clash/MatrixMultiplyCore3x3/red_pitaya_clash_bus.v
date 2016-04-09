// Automatically generated Verilog-2001
module red_pitaya_clash_bus(add_i
                           ,data_i
                           ,strobe_i
                           ,we_i
                           ,re_i
                           ,// clock
                           system1000
                           ,// asynchronous reset: active low
                           system1000_rstn
                           ,data_o
                           ,ack_o
                           ,err_o);
  input [31:0] add_i;
  input [31:0] data_i;
  input [3:0] strobe_i;
  input [0:0] we_i;
  input [0:0] re_i;
  input system1000;
  input system1000_rstn;
  output [31:0] data_o;
  output [0:0] ack_o;
  output [0:0] err_o;
  wire [69:0] input_0;
  wire [33:0] output_0;
  assign input_0 = {add_i
                   ,data_i
                   ,strobe_i
                   ,we_i
                   ,re_i};
  
  MatrixMultiplyCore3x3_topEntity MatrixMultiplyCore3x3_topEntity_inst
  (.arg (input_0)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.result (output_0));
  
  assign data_o = output_0[33:2];
  
  assign ack_o = output_0[1:1];
  
  assign err_o = output_0[0:0];
endmodule
