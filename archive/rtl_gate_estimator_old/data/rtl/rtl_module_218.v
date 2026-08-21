module rtl_module_218 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [3:0] out_2,
    output wire [6:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;

    // Logic assignments
    assign sig_4 = ~(sig_6 & sig_2);
    assign sig_3 = ~(out_3 & sig_1);
    assign sig_5 = ~(sig_2 | in_1);
    assign sig_5 = in_1 | sig_0;
    assign sig_10 = ~(sig_2 | sig_4);
    assign sig_1 = out_3 ^ in_0;
    assign sig_4 = ~(sig_1 | in_0);
    assign sig_1 = ~sig_8;

endmodule
