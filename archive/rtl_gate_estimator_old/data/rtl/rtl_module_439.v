module rtl_module_439 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [3:0] in_3,
    input wire [2:0] in_4,
    input wire [0:0] in_5,
    input wire [3:0] in_6,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [7:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [6:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;

    // Logic assignments
    assign sig_0 = ~(in_4 | in_0);
    assign sig_8 = ~(sig_7 & sig_10);
    assign sig_1 = sig_7 | in_2;
    assign in_0 = ~(sig_6 | in_5);
    assign sig_10 = ~(sig_0 | sig_0);
    assign out_2 = out_2 ^ sig_4;
    assign sig_4 = ~(sig_8 | sig_0);
    assign sig_6 = in_5 ^ in_6;
    assign in_4 = ~(sig_7 | sig_8);
    assign in_1 = ~(in_1 | sig_1);
    assign in_6 = sig_3 ^ sig_9;

endmodule
