module rtl_module_263 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    output wire [4:0] out_0,
    output wire [1:0] out_1,
    output wire [1:0] out_2,
    output wire [4:0] out_3,
    output wire [1:0] out_4,
    output wire [3:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;

    // Logic assignments
    assign in_1 = out_0 & out_2;
    assign out_5 = ~(in_0 & in_0);
    assign out_5 = ~out_0;
    assign in_1 = ~(in_2 & out_4);
    assign out_1 = ~out_2;
    assign in_1 = sig_3 ^ out_2;
    assign sig_4 = ~(sig_0 & sig_2);
    assign sig_2 = ~(out_5 | sig_5);
    assign out_5 = sig_7 ^ sig_3;
    assign in_0 = sig_8 & out_2;

endmodule
