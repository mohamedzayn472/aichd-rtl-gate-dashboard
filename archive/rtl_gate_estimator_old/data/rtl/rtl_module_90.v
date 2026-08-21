module rtl_module_90 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    input wire [4:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] in_4,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [4:0] sig_9;
    wire [6:0] sig_10;
    wire [2:0] sig_11;
    wire [7:0] sig_12;

    // Logic assignments
    assign in_3 = sig_3 & sig_10;
    assign out_1 = sig_6 & out_0;
    assign out_0 = ~sig_8;
    assign out_2 = sig_10 ^ in_3;
    assign sig_11 = out_0 ^ in_0;
    assign sig_0 = out_0 ^ in_1;
    assign sig_5 = sig_9 | in_4;
    assign sig_0 = in_1 ^ sig_3;
    assign sig_8 = out_2 ^ sig_6;

endmodule
