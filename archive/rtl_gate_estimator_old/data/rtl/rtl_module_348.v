module rtl_module_348 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    output wire [7:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;

    // Logic assignments
    assign sig_8 = ~(in_2 & in_1);
    assign sig_6 = in_3 ^ sig_5;
    assign sig_2 = sig_2 | sig_5;
    assign sig_3 = out_0 | out_0;
    assign sig_2 = in_3 & in_2;
    assign sig_8 = in_0 ^ in_3;

endmodule
