module rtl_module_461 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    output wire [6:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [4:0] sig_4;
    wire [6:0] sig_5;
    wire [0:0] sig_6;
    wire [1:0] sig_7;
    wire [7:0] sig_8;
    wire [1:0] sig_9;
    wire [4:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [4:0] sig_13;

    // Logic assignments
    assign sig_5 = sig_8 ^ in_0;
    assign in_0 = ~sig_7;
    assign in_1 = ~(sig_10 & sig_1);
    assign sig_11 = ~(sig_5 | sig_7);
    assign sig_10 = ~out_0;

endmodule
