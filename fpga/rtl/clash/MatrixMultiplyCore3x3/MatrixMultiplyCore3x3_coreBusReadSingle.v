// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_coreBusReadSingle(eta
                                              ,// clock
                                              system1000
                                              ,// asynchronous reset: active low
                                              system1000_rstn
                                              ,result);
  input [32:0] eta;
  input system1000;
  input system1000_rstn;
  output [31:0] result;
  wire [32:0] app_arg;
  wire [32:0] case_alt;
  wire [31:0] app_arg_0;
  wire [31:0] case_scrut;
  wire [31:0] case_alt_0;
  wire [31:0] app_arg_1;
  wire [31:0] app_arg_2;
  wire [31:0] app_arg_3;
  wire [31:0] x;
  wire [31:0] app_arg_4;
  wire [31:0] a1;
  reg [32:0] app_arg_reg;
  always @(*) begin
    case(eta[32:32])
      1'b0 : app_arg_reg = {1'b0,32'b00000000000000000000000000000000};
      default : app_arg_reg = case_alt;
    endcase
  end
  assign app_arg = app_arg_reg;
  
  assign case_alt = {1'b1,app_arg_0};
  
  assign app_arg_0 = case_alt_0;
  
  assign case_scrut = app_arg_1;
  
  assign case_alt_0 = app_arg_2;
  
  // map begin
  wire [31:0] vec;
  assign vec = app_arg_3;
  
  genvar i;
  generate
  for (i=0; i < 32; i = i + 1) begin : map
    wire [0:0] map_in;
    wire [0:0] map_out;
  
    assign map_in = vec[i*1+:1];
    MatrixMultiplyCore3x3_BitPackBitVector1 MatrixMultiplyCore3x3_BitPackBitVector1_0
  (.result (map_out)
  ,.v (map_in));
    assign app_arg_1[i*1+:1] = map_out;
  end
  endgenerate
  // map end
  
  // map begin
  wire [31:0] vec_0;
  assign vec_0 = x;
  
  genvar i_0;
  generate
  for (i_0=0; i_0 < 32; i_0 = i_0 + 1) begin : map_0
    wire [0:0] map_in_0;
    wire [0:0] map_out_0;
  
    assign map_in_0 = vec_0[i_0*1+:1];
    MatrixMultiplyCore3x3_BitPackBitVector2 MatrixMultiplyCore3x3_BitPackBitVector2_1
  (.result (map_out_0)
  ,.v (map_in_0));
    assign app_arg_2[i_0*1+:1] = map_out_0;
  end
  endgenerate
  // map end
  
  assign app_arg_3 = app_arg_4;
  
  assign x = case_scrut[31:0];
  
  assign app_arg_4 = a1;
  
  assign a1 = eta[31:0];
  
  MatrixMultiplyCore3x3_mealy_0 MatrixMultiplyCore3x3_mealy_0_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.w2 (app_arg));
endmodule
