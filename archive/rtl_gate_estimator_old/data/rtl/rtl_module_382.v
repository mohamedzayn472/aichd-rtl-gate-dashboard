module rtl_module_382 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    output wire [5:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [3:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [4:0] sig_8;
    wire [4:0] sig_9;

    // Logic assignments
    assign sig_4 = ~sig_0;
    assign sig_4 = ~(sig_0 | sig_4);
    assign sig_4 = sig_5 | sig_6;
    assign sig_9 = in_0 ^ sig_6;
    assign sig_6 = ~(sig_7 & sig_5);

endmodule
