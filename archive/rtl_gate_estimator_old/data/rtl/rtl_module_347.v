module rtl_module_347 (
input wire [4:0] in_0,
    input wire [0:0] in_1,
    input wire [0:0] in_2,
    input wire [4:0] in_3,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;
    wire [6:0] sig_5;
    wire [1:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [5:0] sig_9;
    wire [7:0] sig_10;
    wire [4:0] sig_11;
    wire [0:0] sig_12;
    wire [6:0] sig_13;

    // Logic assignments
    assign sig_8 = ~(in_0 & sig_1);
    assign sig_1 = sig_7 ^ sig_10;
    assign sig_3 = sig_2 & sig_3;
    assign sig_0 = ~(out_1 | sig_6);
    assign out_1 = ~(sig_5 | sig_7);
    assign sig_3 = in_2 | sig_6;
    assign sig_13 = ~(sig_0 | sig_12);
    assign sig_3 = ~in_1;

endmodule
