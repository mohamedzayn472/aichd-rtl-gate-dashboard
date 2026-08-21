module rtl_module_164 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    output wire [2:0] out_0,
    output wire [2:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [7:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [0:0] sig_9;
    wire [7:0] sig_10;

    // Logic assignments
    assign out_2 = sig_3 ^ sig_7;
    assign in_0 = ~(sig_2 | sig_4);
    assign sig_9 = sig_5 ^ sig_7;
    assign sig_8 = ~(sig_4 & out_2);
    assign sig_2 = ~(in_2 & sig_0);
    assign sig_2 = sig_4 & sig_1;
    assign in_3 = sig_0 ^ out_1;

endmodule
