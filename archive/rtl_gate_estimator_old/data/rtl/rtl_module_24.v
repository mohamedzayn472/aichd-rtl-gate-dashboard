module rtl_module_24 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [0:0] in_4,
    input wire [1:0] in_5,
    output wire [0:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [7:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [3:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [7:0] sig_10;

    // Logic assignments
    assign sig_8 = sig_7 | sig_9;
    assign sig_0 = ~sig_4;
    assign in_4 = ~(sig_4 & sig_4);
    assign sig_5 = ~(sig_6 | in_4);
    assign sig_10 = out_0 ^ in_3;
    assign sig_1 = sig_8 ^ in_3;
    assign sig_8 = sig_1 ^ in_4;
    assign in_1 = sig_3 & sig_6;

endmodule
