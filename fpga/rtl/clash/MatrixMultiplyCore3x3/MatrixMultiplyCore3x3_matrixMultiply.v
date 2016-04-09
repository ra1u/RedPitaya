// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_matrixMultiply(w2
                                           ,w3
                                           ,result);
  input [143:0] w2;
  input [143:0] w3;
  output [143:0] result;
  wire [15:0] restA1;
  wire [47:0] restT1;
  wire signed [15:0] elA2;
  wire [31:0] restA0;
  wire [47:0] elT2;
  wire [15:0] result_0;
  wire signed [15:0] elA1;
  wire [15:0] xs_app_arg;
  wire [15:0] result_1;
  wire signed [15:0] elA0;
  wire [15:0] restR1;
  wire [15:0] restA1_0;
  wire [95:0] restT0;
  wire [31:0] xs_app_arg_0;
  wire [15:0] result_2;
  wire [15:0] elR2;
  wire [31:0] restR0;
  wire signed [15:0] elA2_0;
  wire [31:0] restA0_0;
  wire [47:0] elT1;
  wire [47:0] xs;
  wire [15:0] elR1;
  wire [31:0] result_3;
  wire signed [15:0] elA1_0;
  wire [15:0] elR0;
  wire [31:0] xs_app_arg_1;
  wire [31:0] result_4;
  wire signed [15:0] elA0_0;
  wire [63:0] xs_app_arg_2;
  wire [31:0] result_5;
  wire [31:0] restR1_0;
  wire [15:0] restA1_1;
  wire [95:0] result_6;
  wire [31:0] elR2_0;
  wire [63:0] restR0_0;
  wire signed [15:0] elA2_1;
  wire [31:0] restA0_1;
  wire [47:0] elT0;
  wire [31:0] elR1_0;
  wire [47:0] result_7;
  wire signed [15:0] elA1_1;
  wire [31:0] elR0_0;
  wire [47:0] a1_app_arg;
  wire [47:0] result_8;
  wire signed [15:0] elA0_1;
  wire [95:0] a1_app_arg_0;
  wire [47:0] result_9;
  wire [143:0] result_10;
  // map begin
  wire [143:0] vec;
  assign vec = w2;
  
  genvar i;
  generate
  for (i=0; i < 3; i = i + 1) begin : map
    wire [47:0] map_in;
    wire [47:0] map_out;
  
    assign map_in = vec[i*48+:48];
    MatrixMultiplyCore3x3_matrixMultiply_specF MatrixMultiplyCore3x3_matrixMultiply_specF_0
  (.result (map_out)
  ,.a1 (result_10)
  ,.b1 (map_in));
    assign result[i*48+:48] = map_out;
  end
  endgenerate
  // map end
  
  assign restA1 = restA0[15:0];
  
  assign restT1 = restT0[47:0];
  
  assign elA2 = restA1[15:0];
  
  assign restA0 = elT2[31:0];
  
  assign elT2 = restT1[47:0];
  
  assign result_0 = elA2;
  
  assign elA1 = restA0[31:16];
  
  assign xs_app_arg = result_0;
  
  assign result_1 = elA1;
  
  assign elA0 = elT2[47:32];
  
  assign restR1 = restR0[15:0];
  
  assign restA1_0 = restA0_0[15:0];
  
  assign restT0 = w3[95:0];
  
  assign xs_app_arg_0 = {result_1
                        ,xs_app_arg};
  
  assign result_2 = elA0;
  
  assign elR2 = restR1[15:0];
  
  assign restR0 = xs[31:0];
  
  assign elA2_0 = restA1_0[15:0];
  
  assign restA0_0 = elT1[31:0];
  
  assign elT1 = restT0[95:48];
  
  assign xs = {result_2
              ,xs_app_arg_0};
  
  assign elR1 = restR0[31:16];
  
  assign result_3 = {elA2_0,elR2};
  
  assign elA1_0 = restA0_0[31:16];
  
  assign elR0 = xs[47:32];
  
  assign xs_app_arg_1 = result_3;
  
  assign result_4 = {elA1_0,elR1};
  
  assign elA0_0 = elT1[47:32];
  
  assign xs_app_arg_2 = {result_4
                        ,xs_app_arg_1};
  
  assign result_5 = {elA0_0,elR0};
  
  assign restR1_0 = restR0_0[31:0];
  
  assign restA1_1 = restA0_1[15:0];
  
  assign result_6 = {result_5
                    ,xs_app_arg_2};
  
  assign elR2_0 = restR1_0[31:0];
  
  assign restR0_0 = result_6[63:0];
  
  assign elA2_1 = restA1_1[15:0];
  
  assign restA0_1 = elT0[31:0];
  
  assign elT0 = w3[143:96];
  
  assign elR1_0 = restR0_0[63:32];
  
  assign result_7 = {elA2_1
                    ,elR2_0};
  
  assign elA1_1 = restA0_1[31:16];
  
  assign elR0_0 = result_6[95:64];
  
  assign a1_app_arg = result_7;
  
  assign result_8 = {elA1_1
                    ,elR1_0};
  
  assign elA0_1 = elT0[47:32];
  
  assign a1_app_arg_0 = {result_8
                        ,a1_app_arg};
  
  assign result_9 = {elA0_1
                    ,elR0_0};
  
  assign result_10 = {result_9
                     ,a1_app_arg_0};
endmodule
