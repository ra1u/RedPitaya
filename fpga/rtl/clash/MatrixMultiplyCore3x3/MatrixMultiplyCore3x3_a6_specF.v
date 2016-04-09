// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_a6_specF(eta
                                     ,result);
  input [47:0] eta;
  output [47:0] result;
  wire [47:0] app_arg;
  assign app_arg = eta;
  
  // map begin
  wire [47:0] vec;
  assign vec = app_arg;
  
  genvar i;
  generate
  for (i=0; i < 3; i = i + 1) begin : map
    wire [15:0] map_in;
    wire signed [15:0] map_out;
  
    assign map_in = vec[i*16+:16];
    assign map_out = map_in;
    assign result[i*16+:16] = map_out;
  end
  endgenerate
  // map end
endmodule
