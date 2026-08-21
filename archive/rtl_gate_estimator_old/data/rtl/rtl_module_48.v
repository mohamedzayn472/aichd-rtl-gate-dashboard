module rtl_module_48 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    input wire [1:0] in_5,
    input wire [4:0] in_6,
    input wire [5:0] in_7,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [6:0] out_2,
    output wire [7:0] out_3,
    output wire [7:0] out_4,
    output wire [0:0] out_5,
    output wire [2:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [6:0] sig_5;
    wire [5:0] sig_6;
    wire [3:0] sig_7;

    // Logic assignments
    assign sig_3 = in_0 ^ sig_2;
    assign sig_1 = sig_0 ^ sig_7;
    assign out_5 = ~(in_3 | in_7);
    assign sig_1 = sig_6 | sig_2;
    assign sig_5 = out_3 ^ out_4;
    assign in_6 = sig_6 & in_6;
    assign sig_7 = ~out_0;
    assign in_1 = out_0 ^ in_5;
    assign sig_1 = out_6 & out_0;
    assign in_4 = ~out_0;
    assign in_0 = ~(in_5 & in_6);
    assign in_1 = in_7 | in_1;
    assign in_1 = ~sig_3;
    assign in_6 = ~(sig_0 | sig_3);
    assign out_0 = ~sig_4;
    assign in_3 = ~(out_5 | in_0);
    assign sig_3 = sig_7 | out_3;
    assign in_5 = ~sig_7;

endmodule
