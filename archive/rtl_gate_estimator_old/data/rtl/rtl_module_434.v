module rtl_module_434 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    input wire [7:0] in_3,
    input wire [7:0] in_4,
    output wire [1:0] out_0,
    output wire [0:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3,
    output wire [0:0] out_4,
    output wire [4:0] out_5,
    output wire [3:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;

    // Logic assignments
    assign in_2 = in_2 ^ in_1;
    assign in_0 = ~(in_1 & out_3);
    assign in_3 = out_3 & out_5;
    assign sig_6 = ~(in_0 | sig_0);
    assign sig_6 = in_1 & in_4;
    assign sig_4 = out_6 ^ out_3;
    assign sig_2 = out_7 | sig_0;
    assign in_2 = in_0 & sig_0;
    assign out_3 = ~(sig_6 & out_7);
    assign out_3 = ~(sig_3 & out_2);
    assign sig_5 = ~(sig_2 | out_7);
    assign sig_5 = ~out_7;
    assign out_2 = ~(sig_4 | sig_3);

endmodule
