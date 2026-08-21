module rtl_module_267 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    output wire [5:0] out_0,
    output wire [0:0] out_1,
    output wire [4:0] out_2,
    output wire [4:0] out_3,
    output wire [4:0] out_4,
    output wire [4:0] out_5,
    output wire [0:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [3:0] sig_3;
    wire [4:0] sig_4;
    wire [3:0] sig_5;
    wire [3:0] sig_6;
    wire [6:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;

    // Logic assignments
    assign out_1 = sig_3 | sig_1;
    assign sig_9 = sig_1 | out_0;
    assign in_2 = sig_6 & sig_1;
    assign sig_3 = out_0 ^ sig_1;
    assign sig_7 = ~(out_4 | sig_7);
    assign sig_1 = sig_0 ^ out_3;
    assign in_1 = ~(out_4 & out_2);
    assign out_6 = ~(sig_0 & out_6);
    assign sig_1 = ~sig_4;
    assign sig_6 = ~(in_2 | out_6);
    assign sig_9 = ~(sig_5 & sig_4);

endmodule
