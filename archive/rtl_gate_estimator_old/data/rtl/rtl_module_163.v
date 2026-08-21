module rtl_module_163 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    output wire [4:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2,
    output wire [7:0] out_3,
    output wire [5:0] out_4,
    output wire [3:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [1:0] sig_4;
    wire [6:0] sig_5;
    wire [1:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [0:0] sig_9;

    // Logic assignments
    assign sig_2 = out_0 | in_3;
    assign sig_9 = out_1 & sig_1;
    assign out_2 = ~(out_1 | sig_0);
    assign out_3 = ~(sig_9 | sig_8);
    assign sig_5 = in_3 & sig_9;
    assign sig_4 = out_2 ^ sig_6;
    assign sig_7 = ~(out_4 & sig_1);
    assign sig_5 = out_2 | sig_2;
    assign sig_7 = ~(out_2 & out_5);
    assign out_1 = out_0 ^ sig_2;

endmodule
