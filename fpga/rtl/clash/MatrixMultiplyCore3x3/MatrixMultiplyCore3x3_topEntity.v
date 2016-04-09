// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_topEntity(arg
                                      ,// clock
                                      system1000
                                      ,// asynchronous reset: active low
                                      system1000_rstn
                                      ,result);
  input [69:0] arg;
  input system1000;
  input system1000_rstn;
  output [33:0] result;
  MatrixMultiplyCore3x3_rpSimpleBind MatrixMultiplyCore3x3_rpSimpleBind_result
  (.case_alt (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.sig (arg));
endmodule
