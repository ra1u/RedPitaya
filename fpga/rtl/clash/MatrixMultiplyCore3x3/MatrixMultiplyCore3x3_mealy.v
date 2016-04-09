// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_mealy(pTS
                                  ,w2
                                  ,// clock
                                  system1000
                                  ,// asynchronous reset: active low
                                  system1000_rstn
                                  ,result);
  input [159:0] pTS;
  input [52:0] w2;
  input system1000;
  input system1000_rstn;
  output [255:0] result;
  wire [255:0] y;
  wire [511:0] result_0;
  wire [511:0] tup_case_alt;
  wire [511:0] tup_case_alt_0;
  wire [511:0] result_1;
  wire [51:0] ds;
  wire [255:0] x;
  wire [255:0] o;
  wire [255:0] x_app_arg;
  wire [19:0] inAdd;
  wire [31:0] inData;
  wire [255:0] x_0;
  assign result = y;
  
  assign y = result_0[255:0];
  
  reg [511:0] result_0_reg;
  always @(*) begin
    case(w2[52:52])
      1'b0 : result_0_reg = tup_case_alt;
      default : result_0_reg = tup_case_alt_0;
    endcase
  end
  assign result_0 = result_0_reg;
  
  assign tup_case_alt = {x,x};
  
  assign tup_case_alt_0 = result_1;
  
  assign result_1 = {o,o};
  
  assign ds = w2[51:0];
  
  // register begin
  reg [255:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : MatrixMultiplyCore3x3_mealy_register
    if (~ system1000_rstn) begin
      dout <= ({(8) {(32'd0)}});
    end else begin
      dout <= x_app_arg;
    end
  end
  
  assign x = dout;
  // register end
  
  // zipWith start
  wire [255:0] vec1;
  wire [159:0] vec2;
  assign vec1 = x;
  assign vec2 = pTS;
  
  genvar i;
  generate
  for (i = 0; i < 8; i = i + 1) begin : zipWith
    wire [31:0] zipWith_in1;
    wire [19:0] zipWith_in2;
    wire [31:0] n;
  
    assign zipWith_in1 = vec1[i*32+:32];
    assign zipWith_in2 = vec2[i*20+:20];
    MatrixMultiplyCore3x3_mealy_specF MatrixMultiplyCore3x3_mealy_specF_0
  (.result (n)
  ,.inAdd (inAdd)
  ,.inData (inData)
  ,.curData (zipWith_in1)
  ,.addrN (zipWith_in2));
    assign o[i*32+:32] = n;
  end
  endgenerate
  // zipWith end
  
  assign x_app_arg = x_0;
  
  assign inAdd = ds[51:32];
  
  assign inData = ds[31:0];
  
  assign x_0 = result_0[511:256];
endmodule
