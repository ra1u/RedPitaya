// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_busBuild13(x
                                       ,result);
  input [31:0] x;
  output [31:0] result;
  wire [31:0] app_arg;
  wire [31:0] app_arg_0;
  // map begin
  wire [31:0] vec;
  assign vec = x;
  
  genvar i;
  generate
  for (i=0; i < 32; i = i + 1) begin : map
    wire [0:0] map_in;
    wire [0:0] map_out;
  
    assign map_in = vec[i*1+:1];
    MatrixMultiplyCore3x3_BitPackBitVector2 MatrixMultiplyCore3x3_BitPackBitVector2_0
  (.result (map_out)
  ,.v (map_in));
    assign app_arg[i*1+:1] = map_out;
  end
  endgenerate
  // map end
  
  assign app_arg_0 = app_arg;
  
  assign result = app_arg_0;
endmodule
