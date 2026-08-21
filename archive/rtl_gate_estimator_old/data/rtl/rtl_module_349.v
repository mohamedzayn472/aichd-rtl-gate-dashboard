module rtl_module_349 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    output wire [5:0] out_0,
    output wire [0:0] out_1,
    output wire [2:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [1:0] sig_2;
    wire [0:0] sig_3;
    wire [1:0] sig_4;
    wire [3:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [3:0] sig_9;
    wire [7:0] sig_10;

    // Logic assignments
    assign in_1 = ~(in_0 & in_1);
    assign in_0 = ~(sig_3 | sig_8);
    assign sig_1 = ~sig_10;
    assign sig_3 = sig_8 | sig_10;
    assign sig_6 = ~(out_2 | sig_0);
    assign sig_9 = ~(sig_9 & sig_7);

endmodule
