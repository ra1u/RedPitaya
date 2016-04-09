// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_busBuild_specF_0(addr
                                             ,x1
                                             ,y
                                             ,result);
  input [19:0] addr;
  input [31:0] x1;
  input [19:0] y;
  output [32:0] result;
  wire [0:0] case_scrut;
  wire [32:0] case_alt;
  assign case_scrut = addr == y;
  
  assign case_alt = {1'b1,x1};
  
  reg [32:0] result_reg;
  always @(*) begin
    if(case_scrut)
      result_reg = case_alt;
    else
      result_reg = {1'b0,32'b00000000000000000000000000000000};
  end
  assign result = result_reg;
endmodule
