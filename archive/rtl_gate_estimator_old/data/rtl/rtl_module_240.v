module rtl_module_240 (
input wire [2:0] in_0,
    input wire [4:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    input wire [4:0] in_5,
    input wire [0:0] in_6,
    output wire [6:0] out_0,
    output wire [2:0] out_1,
    output wire [5:0] out_2,
    output wire [0:0] out_3,
    output wire [5:0] out_4
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [3:0] sig_6;

    // Logic assignments
    assign sig_5 = in_2 ^ in_0;
    assign out_4 = sig_4 | in_4;
    assign out_4 = ~(out_1 | in_0);
    assign sig_0 = out_0 & in_3;
    assign sig_1 = in_6 | sig_6;
    assign out_3 = sig_3 ^ out_3;
    assign sig_5 = sig_2 ^ in_4;
    assign in_0 = sig_1 | in_2;
    assign in_4 = ~(in_0 | in_4);
    assign in_1 = ~sig_6;
    assign sig_4 = in_5 & out_1;
    assign out_3 = out_1 | sig_1;
    assign in_5 = in_1 & out_0;
    assign in_2 = ~(sig_6 | sig_6);
    assign in_0 = ~(sig_6 & sig_0);
    assign in_4 = sig_2 | out_2;
    assign in_3 = ~(sig_3 | sig_3);

endmodule
