module rtl_module_45 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    input wire [7:0] in_2,
    input wire [5:0] in_3,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [6:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [5:0] sig_7;
    wire [3:0] sig_8;

    // Logic assignments
    assign sig_0 = ~sig_6;
    assign in_2 = ~(sig_3 | sig_7);
    assign sig_1 = in_2 ^ sig_6;
    assign in_0 = ~sig_4;
    assign sig_3 = in_2 | sig_7;
    assign in_3 = in_0 ^ in_1;
    assign out_1 = ~out_0;
    assign out_0 = out_2 | sig_8;
    assign out_4 = sig_8 ^ in_3;
    assign out_5 = ~sig_3;

endmodule
