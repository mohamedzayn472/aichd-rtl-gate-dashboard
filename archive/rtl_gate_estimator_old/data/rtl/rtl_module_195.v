module rtl_module_195 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    output wire [2:0] out_0,
    output wire [3:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [3:0] sig_11;

    // Logic assignments
    assign sig_5 = ~(in_0 | sig_6);
    assign sig_3 = sig_0 ^ in_1;
    assign out_1 = sig_9 & in_1;
    assign sig_11 = ~(sig_0 & out_0);
    assign sig_0 = sig_8 & sig_9;

endmodule
