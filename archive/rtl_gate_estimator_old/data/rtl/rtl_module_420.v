module rtl_module_420 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    output wire [1:0] out_0,
    output wire [2:0] out_1,
    output wire [1:0] out_2,
    output wire [3:0] out_3,
    output wire [0:0] out_4,
    output wire [0:0] out_5,
    output wire [2:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;
    wire [0:0] sig_9;
    wire [4:0] sig_10;
    wire [4:0] sig_11;
    wire [1:0] sig_12;

    // Logic assignments
    assign sig_5 = ~(out_5 | sig_11);
    assign sig_8 = sig_11 ^ sig_0;
    assign sig_2 = ~(sig_2 & sig_0);
    assign out_2 = ~(sig_2 & sig_2);
    assign sig_11 = sig_4 & sig_0;
    assign sig_10 = ~(sig_7 & sig_1);
    assign sig_10 = ~sig_0;
    assign out_5 = ~(out_5 | out_7);
    assign in_0 = sig_2 | sig_4;
    assign sig_6 = ~sig_1;
    assign out_5 = ~(sig_11 | out_4);

endmodule
