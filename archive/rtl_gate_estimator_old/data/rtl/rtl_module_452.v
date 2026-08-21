module rtl_module_452 (
input wire [2:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [4:0] in_3,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output wire [5:0] out_2,
    output wire [0:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;

    // Logic assignments
    assign sig_5 = ~in_3;
    assign in_3 = in_2 & out_3;
    assign sig_2 = ~(out_0 | out_4);
    assign sig_1 = in_2 ^ out_4;
    assign sig_3 = in_3 ^ in_3;
    assign sig_5 = out_4 & out_1;
    assign sig_3 = out_2 & out_2;
    assign out_2 = out_2 ^ in_0;
    assign sig_2 = ~(in_3 | sig_1);

endmodule
