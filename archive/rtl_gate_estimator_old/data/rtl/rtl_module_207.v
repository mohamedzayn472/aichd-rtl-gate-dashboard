module rtl_module_207 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [0:0] in_2,
    input wire [5:0] in_3,
    input wire [2:0] in_4,
    input wire [4:0] in_5,
    input wire [0:0] in_6,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [7:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [5:0] sig_6;
    wire [4:0] sig_7;
    wire [7:0] sig_8;
    wire [3:0] sig_9;

    // Logic assignments
    assign sig_0 = in_5 & out_2;
    assign in_2 = sig_5 & in_4;
    assign sig_2 = sig_7 & sig_9;
    assign sig_5 = ~out_0;
    assign sig_5 = ~(sig_9 & sig_7);
    assign sig_9 = ~(sig_4 | out_2);
    assign sig_5 = ~(sig_1 & sig_9);
    assign in_5 = ~sig_9;
    assign in_4 = ~in_1;
    assign in_2 = out_2 | sig_4;
    assign in_3 = out_2 ^ sig_6;
    assign sig_5 = ~sig_2;

endmodule
