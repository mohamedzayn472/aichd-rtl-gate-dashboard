module rtl_module_342 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    output wire [4:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [4:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [4:0] sig_9;
    wire [1:0] sig_10;
    wire [0:0] sig_11;
    wire [1:0] sig_12;

    // Logic assignments
    assign sig_4 = ~(in_1 & sig_0);
    assign sig_0 = sig_1 ^ sig_10;
    assign sig_7 = sig_0 & in_0;
    assign sig_7 = sig_3 & in_1;
    assign out_1 = sig_11 | sig_11;

endmodule
