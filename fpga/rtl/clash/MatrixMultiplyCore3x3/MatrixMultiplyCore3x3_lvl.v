// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_lvl(ww
                                ,ww1
                                ,ww2
                                ,ww3
                                ,result);
  input [31:0] ww;
  input [31:0] ww1;
  input [0:0] ww2;
  input [0:0] ww3;
  output [53:0] result;
  wire [53:0] case_alt;
  wire [53:0] case_alt_0;
  wire [53:0] case_alt_1;
  wire [52:0] app_arg;
  wire [53:0] case_alt_2;
  wire [52:0] app_arg_0;
  wire [19:0] app_arg_1;
  reg [53:0] result_reg;
  always @(*) begin
    if(ww2)
      result_reg = case_alt;
    else
      result_reg = case_alt_0;
  end
  assign result = result_reg;
  
  reg [53:0] case_alt_reg;
  always @(*) begin
    if(ww3)
      case_alt_reg = {1'b0,53'b00000000000000000000000000000000000000000000000000000};
    else
      case_alt_reg = case_alt_1;
  end
  assign case_alt = case_alt_reg;
  
  reg [53:0] case_alt_0_reg;
  always @(*) begin
    if(ww3)
      case_alt_0_reg = case_alt_2;
    else
      case_alt_0_reg = {1'b0,53'b00000000000000000000000000000000000000000000000000000};
  end
  assign case_alt_0 = case_alt_0_reg;
  
  assign case_alt_1 = {1'b1,app_arg};
  
  assign app_arg = {app_arg_1
                   ,1'd1
                   ,ww1};
  
  assign case_alt_2 = {1'b1,app_arg_0};
  
  assign app_arg_0 = {app_arg_1
                     ,1'd0
                     ,ww1};
  
  assign app_arg_1 = $unsigned(ww);
endmodule
