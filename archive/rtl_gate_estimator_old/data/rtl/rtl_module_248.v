module rtl_module_248 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [7:0] in_3,
    output wire [2:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [3:0] sig_6;
    wire [4:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [6:0] sig_10;

    // Logic assignments
    assign out_0 = ~in_2;
    assign sig_0 = ~(sig_4 & in_1);
    assign in_0 = ~(sig_8 & sig_10);
    assign sig_0 = ~(in_3 & sig_4);
    assign sig_10 = sig_4 & sig_9;

endmodule
