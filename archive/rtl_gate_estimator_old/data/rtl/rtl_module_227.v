module rtl_module_227 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [7:0] in_3,
    input wire [7:0] in_4,
    output wire [1:0] out_0,
    output wire [0:0] out_1,
    output wire [3:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [3:0] sig_3;
    wire [2:0] sig_4;
    wire [6:0] sig_5;
    wire [5:0] sig_6;
    wire [3:0] sig_7;
    wire [0:0] sig_8;
    wire [6:0] sig_9;

    // Logic assignments
    assign out_1 = out_0 & sig_5;
    assign in_3 = ~sig_9;
    assign sig_8 = ~(out_2 & out_1);
    assign in_0 = sig_0 & sig_1;
    assign in_0 = out_3 & in_3;
    assign sig_8 = in_3 ^ out_2;
    assign out_1 = in_0 | sig_2;
    assign sig_7 = ~(sig_5 | out_0);
    assign out_0 = ~(sig_3 | sig_4);
    assign in_3 = ~(sig_8 & in_0);

endmodule
