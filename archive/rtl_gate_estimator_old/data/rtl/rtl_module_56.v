module rtl_module_56 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    input wire [3:0] in_5,
    input wire [4:0] in_6,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [7:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [4:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [3:0] sig_8;

    // Logic assignments
    assign sig_4 = ~(in_4 | in_5);
    assign out_1 = ~(sig_3 & in_3);
    assign out_1 = sig_8 ^ out_2;
    assign sig_6 = ~(out_1 & sig_2);
    assign in_0 = ~out_0;
    assign in_0 = sig_5 & in_4;
    assign in_1 = in_6 & sig_1;
    assign sig_2 = sig_1 | in_4;
    assign sig_2 = in_6 & out_1;
    assign sig_4 = sig_7 & in_3;
    assign out_1 = ~(sig_0 & out_1);
    assign sig_0 = ~out_0;

endmodule
