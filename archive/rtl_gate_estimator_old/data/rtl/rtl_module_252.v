module rtl_module_252 (
input wire [7:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [6:0] out_2,
    output wire [0:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [3:0] sig_8;
    wire [5:0] sig_9;
    wire [4:0] sig_10;
    wire [5:0] sig_11;
    wire [4:0] sig_12;
    wire [0:0] sig_13;
    wire [0:0] sig_14;

    // Logic assignments
    assign sig_6 = out_2 ^ sig_8;
    assign out_2 = sig_11 ^ sig_7;
    assign sig_1 = ~(sig_3 | in_2);
    assign sig_1 = sig_3 & sig_1;
    assign sig_11 = ~(sig_6 | sig_14);
    assign sig_12 = ~(out_3 & out_1);
    assign in_2 = ~(sig_11 | sig_11);
    assign sig_3 = ~sig_4;
    assign sig_6 = ~(out_2 | out_2);

endmodule
