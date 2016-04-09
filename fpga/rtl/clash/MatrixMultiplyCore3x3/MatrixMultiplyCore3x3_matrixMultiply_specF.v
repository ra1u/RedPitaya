// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_matrixMultiply_specF(a1
                                                 ,b1
                                                 ,result);
  input [143:0] a1;
  input [47:0] b1;
  output [47:0] result;
  // map begin
  wire [143:0] vec;
  assign vec = a1;
  
  genvar i;
  generate
  for (i=0; i < 3; i = i + 1) begin : map
    wire [47:0] map_in;
    wire signed [15:0] map_out;
  
    assign map_in = vec[i*48+:48];
    MatrixMultiplyCore3x3_matrixMultiply_specF_specF MatrixMultiplyCore3x3_matrixMultiply_specF_specF_0
  (.result (map_out)
  ,.b1 (b1)
  ,.x (map_in));
    assign result[i*16+:16] = map_out;
  end
  endgenerate
  // map end
endmodule
