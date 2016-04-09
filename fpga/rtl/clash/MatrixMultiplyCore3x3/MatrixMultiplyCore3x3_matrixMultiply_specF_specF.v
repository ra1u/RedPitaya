// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_matrixMultiply_specF_specF(b1
                                                       ,x
                                                       ,result);
  input [47:0] b1;
  input [47:0] x;
  output signed [15:0] result;
  wire signed [15:0] elF2;
  wire [15:0] restF1;
  wire signed [15:0] elF1;
  wire [31:0] restF0;
  wire signed [15:0] elF0;
  wire [47:0] elF0_case_scrut;
  wire signed [15:0] app_arg;
  assign elF2 = restF1[15:0];
  
  assign restF1 = restF0[15:0];
  
  assign elF1 = restF0[31:16];
  
  assign restF0 = elF0_case_scrut[31:0];
  
  assign elF0 = elF0_case_scrut[47:32];
  
  // zipWith start
  wire [47:0] vec1;
  wire [47:0] vec2;
  assign vec1 = b1;
  assign vec2 = x;
  
  genvar i;
  generate
  for (i = 0; i < 3; i = i + 1) begin : zipWith
    wire signed [15:0] zipWith_in1;
    wire signed [15:0] zipWith_in2;
    wire signed [15:0] n;
  
    assign zipWith_in1 = vec1[i*16+:16];
    assign zipWith_in2 = vec2[i*16+:16];
    assign n = zipWith_in1 * zipWith_in2;
    assign elF0_case_scrut[i*16+:16] = n;
  end
  endgenerate
  // zipWith end
  
  assign result = elF0 + app_arg;
  
  assign app_arg = elF1 + elF2;
endmodule
