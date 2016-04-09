// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_busBuild_specF(eta1
                                           ,result);
  input [47:0] eta1;
  output [47:0] result;
  wire [47:0] app_arg;
  // map begin
  wire [47:0] vec;
  assign vec = eta1;
  
  genvar i;
  generate
  for (i=0; i < 3; i = i + 1) begin : map
    wire signed [15:0] map_in;
    wire [15:0] map_out;
  
    assign map_in = vec[i*16+:16];
    assign map_out = map_in;
    assign app_arg[i*16+:16] = map_out;
  end
  endgenerate
  // map end
  
  assign result = app_arg;
endmodule
