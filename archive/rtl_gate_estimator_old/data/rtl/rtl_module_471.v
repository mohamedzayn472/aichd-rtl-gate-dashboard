module rtl_module_471 (
input wire [3:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    output wire [5:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [5:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;

    // Logic assignments
    assign in_1 = in_2 & sig_10;
    assign sig_6 = ~(sig_2 | sig_0);
    assign sig_5 = out_0 & sig_2;
    assign in_0 = sig_1 & in_2;

endmodule
