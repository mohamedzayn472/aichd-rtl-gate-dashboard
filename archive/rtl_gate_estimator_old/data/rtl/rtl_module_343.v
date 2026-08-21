module rtl_module_343 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [2:0] out_2,
    output wire [1:0] out_3,
    output wire [3:0] out_4,
    output wire [4:0] out_5,
    output wire [5:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;

    // Logic assignments
    assign sig_1 = in_1 ^ out_1;
    assign out_6 = out_2 & out_4;
    assign in_1 = ~(out_2 | out_4);
    assign sig_1 = out_3 & out_1;
    assign in_1 = out_0 & out_2;
    assign out_6 = in_1 & out_2;
    assign sig_1 = sig_0 & out_6;
    assign out_4 = out_5 & sig_2;
    assign sig_0 = sig_2 & out_2;
    assign in_0 = ~(sig_0 | out_3);

endmodule
