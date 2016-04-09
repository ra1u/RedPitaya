// Automatically generated Verilog-2001
module MatrixMultiplyCore3x3_mealy_0(w2
                                    ,// clock
                                    system1000
                                    ,// asynchronous reset: active low
                                    system1000_rstn
                                    ,result);
  input [32:0] w2;
  input system1000;
  input system1000_rstn;
  output [31:0] result;
  wire [31:0] y;
  wire [63:0] result_0;
  wire [63:0] tup_case_alt;
  wire [63:0] tup_case_alt_0;
  wire [31:0] d;
  wire [31:0] x;
  wire [31:0] x_app_arg;
  wire [31:0] x_0;
  assign result = y;
  
  assign y = result_0[31:0];
  
  reg [63:0] result_0_reg;
  always @(*) begin
    case(w2[32:32])
      1'b0 : result_0_reg = tup_case_alt;
      default : result_0_reg = tup_case_alt_0;
    endcase
  end
  assign result_0 = result_0_reg;
  
  assign tup_case_alt = {x,x};
  
  assign tup_case_alt_0 = {d,d};
  
  assign d = w2[31:0];
  
  // register begin
  reg [31:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : MatrixMultiplyCore3x3_mealy_0_register
    if (~ system1000_rstn) begin
      dout <= (32'd0);
    end else begin
      dout <= x_app_arg;
    end
  end
  
  assign x = dout;
  // register end
  
  assign x_app_arg = x_0;
  
  assign x_0 = result_0[63:32];
endmodule
