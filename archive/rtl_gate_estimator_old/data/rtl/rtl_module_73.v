module rtl_module_73 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [7:0] in_4,
    output wire [5:0] out_0,
    output wire [7:0] out_1,
    output wire [3:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [7:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [6:0] sig_11;
    wire [0:0] sig_12;

    // Logic assignments
    assign sig_4 = sig_9 | sig_7;
    assign sig_4 = sig_9 ^ sig_0;
    assign sig_4 = ~out_1;
    assign sig_11 = in_4 & sig_9;
    assign sig_9 = ~(in_2 | sig_11);
    assign sig_0 = out_0 & sig_12;
    assign sig_7 = sig_8 | sig_5;
    assign in_0 = ~sig_0;
    assign out_0 = ~sig_1;

endmodule
