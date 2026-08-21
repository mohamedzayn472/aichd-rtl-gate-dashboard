module rtl_module_257 (
input wire [0:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [6:0] in_3,
    input wire [5:0] in_4,
    input wire [7:0] in_5,
    output wire [2:0] out_0,
    output wire [6:0] out_1,
    output wire [0:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;

    // Logic assignments
    assign out_0 = ~sig_8;
    assign in_2 = in_4 ^ out_0;
    assign sig_6 = in_5 ^ in_2;
    assign out_2 = out_2 & in_4;
    assign in_2 = out_3 ^ sig_6;
    assign sig_7 = sig_2 | in_5;
    assign in_4 = out_0 | sig_4;
    assign out_3 = ~(in_2 & sig_8);
    assign sig_2 = sig_5 & sig_2;
    assign in_3 = out_2 | sig_5;
    assign sig_3 = ~(sig_5 | out_0);

endmodule
