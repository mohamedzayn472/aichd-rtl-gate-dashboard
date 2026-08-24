module rtl_module_350 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [1:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [3:0] sig_10;
    wire [1:0] sig_11;
    wire [6:0] sig_12;
    wire [1:0] sig_13;

    // Logic assignments
    assign out_0 = ((sig_1 & (sig_0 & sig_13)) & out_2);
    assign out_1 = (~(sig_12 | ((((out_3 & out_2) ^ out_1) & in_0) ^ sig_8)));
    assign out_2 = (~(((sig_11 | sig_5) ^ sig_9) | sig_11));
    assign out_3 = ((out_0 & (sig_2 | in_0)) ^ sig_10);
    assign sig_3 = (~(~sig_8));
    assign sig_13 = (sig_9 | (sig_3 ^ out_2));

endmodule
