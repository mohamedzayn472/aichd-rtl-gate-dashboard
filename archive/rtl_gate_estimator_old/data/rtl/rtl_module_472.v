module rtl_module_472 (
input wire [0:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    output wire [0:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [7:0] sig_7;
    wire [3:0] sig_8;

    // Logic assignments
    assign out_0 = ~out_1;
    assign sig_6 = ~sig_4;
    assign sig_6 = out_0 | sig_5;
    assign in_2 = ~(sig_1 | out_1);
    assign sig_2 = ~(sig_7 | sig_7);
    assign sig_0 = sig_5 ^ out_1;

endmodule
