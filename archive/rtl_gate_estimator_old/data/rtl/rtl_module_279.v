module rtl_module_279 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    output wire [3:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;

    // Logic assignments
    assign sig_0 = ~(sig_3 & in_1);
    assign sig_7 = ~(sig_7 & sig_2);
    assign sig_3 = ~(sig_0 | sig_7);

endmodule
