module rtl_module_350 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    output wire [4:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [3:0] out_4,
    output wire [1:0] out_5,
    output wire [6:0] out_6,
    output wire [7:0] out_7
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [4:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;
    wire [7:0] sig_9;

    // Logic assignments
    assign sig_7 = ~(sig_9 & sig_4);
    assign out_7 = ~(sig_1 | sig_0);
    assign out_2 = ~(out_3 | out_1);
    assign out_1 = ~sig_8;
    assign sig_9 = sig_3 & out_3;
    assign out_1 = ~(sig_0 | sig_2);
    assign out_6 = sig_3 & out_5;
    assign sig_8 = out_3 & out_5;
    assign out_1 = sig_0 & out_7;
    assign sig_2 = sig_2 & sig_5;

endmodule
