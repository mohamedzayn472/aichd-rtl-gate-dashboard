module rtl_module_433 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    output wire [6:0] out_0,
    output wire [0:0] out_1,
    output wire [3:0] out_2,
    output wire [1:0] out_3,
    output wire [6:0] out_4,
    output wire [6:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;

    // Logic assignments
    assign sig_0 = sig_2 & sig_0;
    assign out_5 = ~(out_0 & sig_1);
    assign out_5 = out_5 ^ sig_2;
    assign out_1 = in_0 & in_1;
    assign out_4 = ~(in_1 & out_4);
    assign out_5 = ~(sig_2 & out_3);
    assign out_3 = out_2 & in_0;
    assign in_1 = ~(out_2 | in_0);
    assign out_3 = ~(out_6 | out_5);

endmodule
