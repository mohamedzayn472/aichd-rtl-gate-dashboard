module rtl_module_33 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [5:0] sig_3;
    wire [4:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [2:0] sig_8;
    wire [6:0] sig_9;

    // Logic assignments
    assign in_0 = sig_0 & sig_9;
    assign sig_0 = ~(sig_8 & out_0);
    assign sig_7 = out_1 & out_0;
    assign sig_5 = out_4 & sig_3;
    assign out_0 = ~(sig_3 | sig_2);
    assign sig_7 = sig_6 ^ out_3;
    assign sig_0 = sig_3 | out_1;
    assign out_1 = sig_7 ^ out_3;

endmodule
