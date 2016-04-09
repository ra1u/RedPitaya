// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_a6(ab
                               ,result);
  input [287:0] ab;
  output [287:0] result;
  wire [143:0] app_arg;
  wire [143:0] app_arg_0;
  wire [143:0] app_arg_1;
  wire [143:0] app_arg_2;
  wire [143:0] app_arg_3;
  wire [143:0] app_arg_4;
  wire [287:0] ds;
  wire [143:0] a9;
  wire [143:0] b1;
  assign result = {app_arg
                  ,app_arg_0};
  
  // map begin
  wire [143:0] vec;
  assign vec = app_arg_1;
  
  genvar i;
  generate
  for (i=0; i < 3; i = i + 1) begin : map
    wire [47:0] map_in;
    wire [47:0] map_out;
  
    assign map_in = vec[i*48+:48];
    MatrixMultiplyCore3x3_a6_specF MatrixMultiplyCore3x3_a6_specF_0
  (.result (map_out)
  ,.eta (map_in));
    assign app_arg[i*48+:48] = map_out;
  end
  endgenerate
  // map end
  
  // map begin
  wire [143:0] vec_0;
  assign vec_0 = app_arg_2;
  
  genvar i_0;
  generate
  for (i_0=0; i_0 < 3; i_0 = i_0 + 1) begin : map_0
    wire [47:0] map_in_0;
    wire [47:0] map_out_0;
  
    assign map_in_0 = vec_0[i_0*48+:48];
    MatrixMultiplyCore3x3_a6_specF MatrixMultiplyCore3x3_a6_specF_1
  (.result (map_out_0)
  ,.eta (map_in_0));
    assign app_arg_0[i_0*48+:48] = map_out_0;
  end
  endgenerate
  // map end
  
  assign app_arg_1 = app_arg_3;
  
  assign app_arg_2 = app_arg_4;
  
  assign app_arg_3 = a9;
  
  assign app_arg_4 = b1;
  
  assign ds = ab;
  
  assign a9 = ds[287:144];
  
  assign b1 = ds[143:0];
endmodule
