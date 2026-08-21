module rtl_module_180 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    output wire [4:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [3:0] sig_8;

    // Logic assignments
    assign in_3 = sig_6 & sig_6;
    assign sig_3 = sig_4 ^ sig_7;
    assign sig_4 = sig_8 | sig_3;
    assign in_0 = ~(sig_7 & sig_3);
    assign sig_3 = in_3 ^ sig_6;
    assign in_2 = ~(sig_0 & in_2);

endmodule
