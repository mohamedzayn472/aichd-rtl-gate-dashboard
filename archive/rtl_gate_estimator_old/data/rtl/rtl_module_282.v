module rtl_module_282 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [3:0] in_3,
    input wire [5:0] in_4,
    input wire [5:0] in_5,
    input wire [6:0] in_6,
    input wire [6:0] in_7,
    output wire [4:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2,
    output wire [1:0] out_3,
    output wire [6:0] out_4,
    output wire [2:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [1:0] sig_2;
    wire [2:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;

    // Logic assignments
    assign in_5 = sig_11 ^ sig_0;
    assign in_6 = ~(out_5 & in_3);
    assign out_3 = sig_7 ^ sig_8;
    assign out_4 = ~(out_2 & in_3);
    assign sig_7 = sig_11 & sig_6;
    assign out_6 = out_4 | sig_5;
    assign sig_11 = ~(sig_11 & sig_11);
    assign sig_10 = out_2 ^ sig_8;
    assign out_0 = in_5 & sig_8;
    assign in_6 = ~(in_3 | out_3);
    assign in_0 = ~(in_1 & in_7);
    assign sig_5 = ~sig_5;
    assign out_3 = out_2 & out_3;
    assign out_2 = in_0 | in_1;
    assign sig_3 = in_6 & out_3;
    assign sig_9 = sig_2 | in_6;

endmodule
