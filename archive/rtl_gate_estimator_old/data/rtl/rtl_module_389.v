module rtl_module_389 (
input wire [3:0] in_0,
    input wire [6:0] in_1,
    output wire [0:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;

    // Logic assignments
    assign sig_2 = ~(sig_6 | out_0);
    assign sig_1 = sig_6 ^ sig_0;
    assign out_0 = ~(sig_2 | sig_2);
    assign out_0 = in_1 & sig_2;

endmodule
