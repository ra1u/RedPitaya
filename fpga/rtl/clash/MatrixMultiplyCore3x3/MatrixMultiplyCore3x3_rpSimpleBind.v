// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_rpSimpleBind(sig
                                         ,// clock
                                         system1000
                                         ,// asynchronous reset: active low
                                         system1000_rstn
                                         ,case_alt);
  input [69:0] sig;
  input system1000;
  input system1000_rstn;
  output [33:0] case_alt;
  wire [33:0] case_alt_0;
  wire [53:0] ds1;
  wire [86:0] result;
  wire [33:0] case_alt_1;
  wire [32:0] ds2;
  wire [32:0] x;
  wire [31:0] out;
  wire [53:0] fin_case_alt;
  wire [31:0] ww1;
  wire [31:0] ww2;
  wire [0:0] ww4;
  wire [0:0] ww5;
  reg [33:0] case_alt_reg;
  always @(*) begin
    case(ds1[53:53])
      1'b0 : case_alt_reg = {32'd0
                            ,1'b0
                            ,1'b0};
      default : case_alt_reg = case_alt_0;
    endcase
  end
  assign case_alt = case_alt_reg;
  
  reg [33:0] case_alt_0_reg;
  always @(*) begin
    case(ds2[32:32])
      1'b0 : case_alt_0_reg = {32'd0
                              ,1'b0
                              ,1'b0};
      default : case_alt_0_reg = case_alt_1;
    endcase
  end
  assign case_alt_0 = case_alt_0_reg;
  
  assign ds1 = result[86:33];
  
  assign result = {fin_case_alt
                  ,x};
  
  assign case_alt_1 = {out
                      ,1'b1
                      ,1'b0};
  
  assign ds2 = result[32:0];
  
  MatrixMultiplyCore3x3_busBuild MatrixMultiplyCore3x3_busBuild_x
  (.result (x)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.busInput (fin_case_alt));
  
  assign out = ds2[31:0];
  
  MatrixMultiplyCore3x3_lvl MatrixMultiplyCore3x3_lvl_fin_case_alt
  (.result (fin_case_alt)
  ,.ww (ww1)
  ,.ww1 (ww2)
  ,.ww2 (ww4)
  ,.ww3 (ww5));
  
  assign ww1 = sig[69:38];
  
  assign ww2 = sig[37:6];
  
  assign ww4 = sig[1:1];
  
  assign ww5 = sig[0:0];
endmodule
