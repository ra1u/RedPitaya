// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_busBuild(busInput
                                     ,// clock
                                     system1000
                                     ,// asynchronous reset: active low
                                     system1000_rstn
                                     ,result);
  input [53:0] busInput;
  input system1000;
  input system1000_rstn;
  output [32:0] result;
  wire [32:0] result_0;
  wire [32:0] x_case_alt;
  wire [32:0] result_1;
  wire [163:0] x;
  wire [164:0] result_2;
  wire [32:0] x_case_alt_0;
  wire [164:0] x_case_alt_1;
  wire [53:0] busIn;
  wire [32:0] x_case_alt_2;
  wire [32:0] result_3;
  wire [19:0] addr;
  wire [164:0] x_case_alt_3;
  wire [52:0] ds2;
  wire [53:0] busIn_case_alt;
  wire [31:0] x_app_arg;
  wire [32:0] elF1;
  wire [164:0] x_case_alt_4;
  wire [0:0] ds4;
  wire [52:0] busIn_app_arg;
  wire [31:0] x_case_alt_5;
  wire [32:0] result_4;
  wire [163:0] x_app_arg_0;
  wire [52:0] busIn_case_alt_0;
  wire [52:0] a1;
  wire [31:0] x_app_arg_1;
  wire [32:0] r;
  wire [131:0] rest;
  wire [32:0] elF2;
  wire [19:0] ds3;
  wire [19:0] busIn_app_arg_0;
  wire [0:0] dir;
  wire [31:0] datum;
  wire [143:0] x_app_arg_2;
  wire [15:0] x_app_arg_3;
  wire [127:0] rest_app_arg;
  wire [98:0] restF1;
  wire [32:0] elF3;
  wire [32:0] elF4;
  wire [143:0] result_5;
  wire [19:0] addr_0;
  wire [79:0] xs1;
  wire [15:0] x_app_arg_4;
  wire [127:0] rest_app_arg_0;
  wire [65:0] restF2;
  wire [32:0] restF3;
  wire [143:0] ds1;
  wire [143:0] x_case_alt_6;
  wire [99:0] xs1_app_arg;
  wire [15:0] y;
  wire [127:0] rest_app_arg_1;
  wire [143:0] ds1_app_arg;
  wire [143:0] a7;
  wire [143:0] b;
  wire [287:0] result_6;
  wire [79:0] xs1_app_arg_0;
  wire [143:0] rest_case_scrut;
  wire [143:0] d;
  wire [79:0] xs1_app_arg_1;
  wire [143:0] rest_app_arg_2;
  wire [127:0] x1;
  wire [287:0] result_7;
  wire [31:0] x_0;
  wire [255:0] result_8;
  wire [32:0] x_app_arg_5;
  wire [32:0] x_case_alt_7;
  wire [52:0] sig;
  wire [255:0] result_9;
  wire [32:0] x_case_alt_8;
  wire [51:0] x_1;
  wire [52:0] sig_case_alt;
  wire [255:0] x_2;
  wire [0:0] x_case_scrut;
  wire [32:0] x_case_alt_9;
  wire [52:0] sig_case_alt_0;
  wire [19:0] add;
  wire [31:0] d_0;
  wire [52:0] sig_case_alt_1;
  wire [159:0] xs;
  wire [51:0] sig_app_arg;
  wire [179:0] xs_app_arg;
  wire [31:0] d_1;
  wire [159:0] xs_app_arg_0;
  wire [159:0] xs_app_arg_1;
  wire [31:0] result_case_alt_app_arg;
  assign result_case_alt_app_arg = 32'd0;
  
  reg [32:0] result_reg;
  always @(*) begin
    case(result_0[32:32])
      1'b0 : result_reg = {1'b1,result_case_alt_app_arg};
      default : result_reg = result_0;
    endcase
  end
  assign result = result_reg;
  
  reg [32:0] result_0_reg;
  always @(*) begin
    case(result_2[164:164])
      1'b0 : result_0_reg = {1'b0,32'b00000000000000000000000000000000};
      default : result_0_reg = x_case_alt;
    endcase
  end
  assign result_0 = result_0_reg;
  
  assign x_case_alt = result_1;
  
  reg [32:0] result_1_reg;
  always @(*) begin
    case(result_3[32:32])
      1'b0 : result_1_reg = x_case_alt_0;
      default : result_1_reg = result_3;
    endcase
  end
  assign result_1 = result_1_reg;
  
  assign x = result_2[163:0];
  
  reg [164:0] result_2_reg;
  always @(*) begin
    case(busIn[53:53])
      1'b0 : result_2_reg = {1'b0,164'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
      default : result_2_reg = x_case_alt_1;
    endcase
  end
  assign result_2 = result_2_reg;
  
  reg [32:0] x_case_alt_0_reg;
  always @(*) begin
    case(addr)
      20'd4 : x_case_alt_0_reg = x_case_alt_2;
      default : x_case_alt_0_reg = {1'b0,32'b00000000000000000000000000000000};
    endcase
  end
  assign x_case_alt_0 = x_case_alt_0_reg;
  
  assign x_case_alt_1 = x_case_alt_3;
  
  reg [53:0] busIn_reg;
  always @(*) begin
    case(busInput[53:53])
      1'b0 : busIn_reg = {1'b0,53'b00000000000000000000000000000000000000000000000000000};
      default : busIn_reg = busIn_case_alt;
    endcase
  end
  assign busIn = busIn_reg;
  
  assign x_case_alt_2 = {1'b1,x_app_arg};
  
  reg [32:0] result_3_reg;
  always @(*) begin
    case(elF1[32:32])
      1'b0 : result_3_reg = result_4;
      default : result_3_reg = elF1;
    endcase
  end
  assign result_3 = result_3_reg;
  
  assign addr = x[163:144];
  
  reg [164:0] x_case_alt_3_reg;
  always @(*) begin
    case(ds4)
      1'b0 : x_case_alt_3_reg = x_case_alt_4;
      default : x_case_alt_3_reg = {1'b0,164'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    endcase
  end
  assign x_case_alt_3 = x_case_alt_3_reg;
  
  assign ds2 = busIn[52:0];
  
  assign busIn_case_alt = {1'b1,busIn_app_arg};
  
  assign x_app_arg = x_case_alt_5;
  
  assign elF1 = rest[131:99];
  
  assign x_case_alt_4 = {1'b1,x_app_arg_0};
  
  assign ds4 = ds2[32:32];
  
  assign busIn_app_arg = busIn_case_alt_0;
  
  assign x_case_alt_5 = x_app_arg_1;
  
  reg [32:0] result_4_reg;
  always @(*) begin
    case(elF2[32:32])
      1'b0 : result_4_reg = r;
      default : result_4_reg = elF2;
    endcase
  end
  assign result_4 = result_4_reg;
  
  assign x_app_arg_0 = {ds3
                       ,result_5};
  
  assign busIn_case_alt_0 = {busIn_app_arg_0
                            ,dir
                            ,datum};
  
  assign a1 = busInput[52:0];
  
  assign x_app_arg_1 = {x_app_arg_3,(16'd0)};
  
  reg [32:0] r_reg;
  always @(*) begin
    case(elF3[32:32])
      1'b0 : r_reg = elF4;
      default : r_reg = elF3;
    endcase
  end
  assign r = r_reg;
  
  // zipWith start
  wire [127:0] vec1;
  wire [79:0] vec2;
  assign vec1 = rest_app_arg;
  assign vec2 = xs1;
  
  genvar i;
  generate
  for (i = 0; i < 4; i = i + 1) begin : zipWith
    wire [31:0] zipWith_in1;
    wire [19:0] zipWith_in2;
    wire [32:0] n;
  
    assign zipWith_in1 = vec1[i*32+:32];
    assign zipWith_in2 = vec2[i*20+:20];
    MatrixMultiplyCore3x3_busBuild_specF_0 MatrixMultiplyCore3x3_busBuild_specF_0_0
  (.result (n)
  ,.addr (addr)
  ,.x1 (zipWith_in1)
  ,.y (zipWith_in2));
    assign rest[i*33+:33] = n;
  end
  endgenerate
  // zipWith end
  
  assign elF2 = restF1[98:66];
  
  assign ds3 = ds2[52:33];
  
  assign busIn_app_arg_0 = addr_0 >> (64'sd2);
  
  assign dir = a1[32:32];
  
  assign datum = a1[31:0];
  
  assign x_app_arg_2 = ds1;
  
  assign x_app_arg_3 = x_app_arg_4;
  
  // map begin
  wire [127:0] vec;
  assign vec = rest_app_arg_0;
  
  genvar i_0;
  generate
  for (i_0=0; i_0 < 4; i_0 = i_0 + 1) begin : map
    wire [31:0] map_in;
    wire [31:0] map_out;
  
    assign map_in = vec[i_0*32+:32];
    MatrixMultiplyCore3x3_busBuild13 MatrixMultiplyCore3x3_busBuild13_1
  (.result (map_out)
  ,.x (map_in));
    assign rest_app_arg[i_0*32+:32] = map_out;
  end
  endgenerate
  // map end
  
  assign restF1 = rest[98:0];
  
  assign elF3 = restF2[65:33];
  
  assign elF4 = restF3[32:0];
  
  assign result_5 = x_case_alt_6;
  
  assign addr_0 = a1[52:33];
  
  // init begin
  wire [99:0] vec_0;
  assign vec_0 = xs1_app_arg;
  
  assign xs1 = vec_0[100-1 : 20];
  // init end
  
  // map begin
  wire [15:0] vec_1;
  assign vec_1 = y;
  
  genvar i_1;
  generate
  for (i_1=0; i_1 < 16; i_1 = i_1 + 1) begin : map_0
    wire [0:0] map_in_0;
    wire [0:0] map_out_0;
  
    assign map_in_0 = vec_1[i_1*1+:1];
    MatrixMultiplyCore3x3_BitPackBitVector2 MatrixMultiplyCore3x3_BitPackBitVector2_2
  (.result (map_out_0)
  ,.v (map_in_0));
    assign x_app_arg_4[i_1*1+:1] = map_out_0;
  end
  endgenerate
  // map end
  
  assign rest_app_arg_0 = rest_app_arg_1;
  
  assign restF2 = restF1[65:0];
  
  assign restF3 = restF2[32:0];
  
  assign ds1 = ds1_app_arg;
  
  MatrixMultiplyCore3x3_matrixMultiply MatrixMultiplyCore3x3_matrixMultiply_x_case_alt_6
  (.result (x_case_alt_6)
  ,.w2 (a7)
  ,.w3 (b));
  
  assign xs1_app_arg = {20'd0
                       ,xs1_app_arg_0};
  
  assign y = rest_case_scrut[15:0];
  
  assign rest_app_arg_1 = x1;
  
  // map begin
  wire [143:0] vec_2;
  assign vec_2 = d;
  
  genvar i_2;
  generate
  for (i_2=0; i_2 < 3; i_2 = i_2 + 1) begin : map_1
    wire [47:0] map_in_1;
    wire [47:0] map_out_1;
  
    assign map_in_1 = vec_2[i_2*48+:48];
    MatrixMultiplyCore3x3_busBuild_specF MatrixMultiplyCore3x3_busBuild_specF_3
  (.result (map_out_1)
  ,.eta1 (map_in_1));
    assign ds1_app_arg[i_2*48+:48] = map_out_1;
  end
  endgenerate
  // map end
  
  assign a7 = result_6[287:144];
  
  assign b = result_6[143:0];
  
  MatrixMultiplyCore3x3_a6 MatrixMultiplyCore3x3_a6_result_6
  (.result (result_6)
  ,.ab (result_7));
  
  // map begin
  wire [79:0] vec_3;
  assign vec_3 = xs1_app_arg_1;
  
  genvar i_3;
  generate
  for (i_3=0; i_3 < 4; i_3 = i_3 + 1) begin : map_2
    wire [19:0] map_in_2;
    wire [19:0] map_out_2;
  
    assign map_in_2 = vec_3[i_3*20+:20];
    MatrixMultiplyCore3x3_busBuild14 MatrixMultiplyCore3x3_busBuild14_4
  (.result (map_out_2)
  ,.ds (map_in_2));
    assign xs1_app_arg_0[i_3*20+:20] = map_out_2;
  end
  endgenerate
  // map end
  
  assign rest_case_scrut = rest_app_arg_2;
  
  assign d = x[143:0];
  
  assign xs1_app_arg_1 = xs1;
  
  // map begin
  wire [143:0] vec_4;
  assign vec_4 = x_app_arg_2;
  
  genvar i_4;
  generate
  for (i_4=0; i_4 < 144; i_4 = i_4 + 1) begin : map_3
    wire [0:0] map_in_3;
    wire [0:0] map_out_3;
  
    assign map_in_3 = vec_4[i_4*1+:1];
    MatrixMultiplyCore3x3_BitPackBitVector1 MatrixMultiplyCore3x3_BitPackBitVector1_5
  (.result (map_out_3)
  ,.v (map_in_3));
    assign rest_app_arg_2[i_4*1+:1] = map_out_3;
  end
  endgenerate
  // map end
  
  assign x1 = rest_case_scrut[143:16];
  
  assign result_7 = {result_8,x_0};
  
  MatrixMultiplyCore3x3_coreBusReadSingle MatrixMultiplyCore3x3_coreBusReadSingle_x_0
  (.result (x_0)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.eta (x_app_arg_5));
  
  assign result_8 = result_9;
  
  reg [32:0] x_app_arg_5_reg;
  always @(*) begin
    case(sig[52:52])
      1'b0 : x_app_arg_5_reg = {1'b0,32'b00000000000000000000000000000000};
      default : x_app_arg_5_reg = x_case_alt_7;
    endcase
  end
  assign x_app_arg_5 = x_app_arg_5_reg;
  
  assign x_case_alt_7 = x_case_alt_8;
  
  reg [52:0] sig_reg;
  always @(*) begin
    case(busIn[53:53])
      1'b0 : sig_reg = {1'b0,52'b0000000000000000000000000000000000000000000000000000};
      default : sig_reg = sig_case_alt;
    endcase
  end
  assign sig = sig_reg;
  
  // map begin
  wire [255:0] vec_5;
  assign vec_5 = x_2;
  
  genvar i_5;
  generate
  for (i_5=0; i_5 < 8; i_5 = i_5 + 1) begin : map_4
    wire [31:0] map_in_4;
    wire [31:0] map_out_4;
  
    assign map_in_4 = vec_5[i_5*32+:32];
    assign map_out_4 = map_in_4;
    assign result_9[i_5*32+:32] = map_out_4;
  end
  endgenerate
  // map end
  
  reg [32:0] x_case_alt_8_reg;
  always @(*) begin
    if(x_case_scrut)
      x_case_alt_8_reg = x_case_alt_9;
    else
      x_case_alt_8_reg = {1'b0,32'b00000000000000000000000000000000};
  end
  assign x_case_alt_8 = x_case_alt_8_reg;
  
  assign x_1 = sig[51:0];
  
  assign sig_case_alt = sig_case_alt_0;
  
  MatrixMultiplyCore3x3_mealy MatrixMultiplyCore3x3_mealy_x_2
  (.result (x_2)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.pTS (xs)
  ,.w2 (sig));
  
  assign x_case_scrut = 20'd8 == add;
  
  assign x_case_alt_9 = {1'b1,d_0};
  
  reg [52:0] sig_case_alt_0_reg;
  always @(*) begin
    case(ds4)
      1'b0 : sig_case_alt_0_reg = {1'b0,52'b0000000000000000000000000000000000000000000000000000};
      default : sig_case_alt_0_reg = sig_case_alt_1;
    endcase
  end
  assign sig_case_alt_0 = sig_case_alt_0_reg;
  
  assign add = x_1[51:32];
  
  assign d_0 = x_1[31:0];
  
  assign sig_case_alt_1 = {1'b1,sig_app_arg};
  
  // init begin
  wire [179:0] vec_6;
  assign vec_6 = xs_app_arg;
  
  assign xs = vec_6[180-1 : 20];
  // init end
  
  assign sig_app_arg = {ds3,d_1};
  
  assign xs_app_arg = {20'd0
                      ,xs_app_arg_0};
  
  assign d_1 = ds2[31:0];
  
  // map begin
  wire [159:0] vec_7;
  assign vec_7 = xs_app_arg_1;
  
  genvar i_6;
  generate
  for (i_6=0; i_6 < 8; i_6 = i_6 + 1) begin : map_5
    wire [19:0] map_in_5;
    wire [19:0] map_out_5;
  
    assign map_in_5 = vec_7[i_6*20+:20];
    MatrixMultiplyCore3x3_busBuild14 MatrixMultiplyCore3x3_busBuild14_6
  (.result (map_out_5)
  ,.ds (map_in_5));
    assign xs_app_arg_0[i_6*20+:20] = map_out_5;
  end
  endgenerate
  // map end
  
  assign xs_app_arg_1 = xs;
endmodule
