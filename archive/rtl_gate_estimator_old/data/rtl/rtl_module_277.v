module rtl_module_277 (
input wire [2:0] in_0,
    input wire [4:0] in_1,
    input wire [6:0] in_2,
    input wire [6:0] in_3,
    output wire [5:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;
    wire [3:0] sig_8;
    wire [0:0] sig_9;
    wire [2:0] sig_10;

    // Logic assignments
    assign in_3 = ~sig_2;
    assign in_0 = sig_3 | in_0;
    assign sig_2 = sig_4 | sig_9;
    assign sig_10 = ~in_2;
    assign in_3 = ~(sig_9 | sig_10);
    assign in_0 = sig_10 ^ sig_9;

endmodule
