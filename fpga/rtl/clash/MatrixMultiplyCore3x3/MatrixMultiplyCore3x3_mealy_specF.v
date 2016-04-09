// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_mealy_specF(inAdd
                                        ,inData
                                        ,curData
                                        ,addrN
                                        ,result);
  input [19:0] inAdd;
  input [31:0] inData;
  input [31:0] curData;
  input [19:0] addrN;
  output [31:0] result;
  wire [0:0] case_scrut;
  assign case_scrut = inAdd == addrN;
  
  reg [31:0] result_reg;
  always @(*) begin
    if(case_scrut)
      result_reg = inData;
    else
      result_reg = curData;
  end
  assign result = result_reg;
endmodule
