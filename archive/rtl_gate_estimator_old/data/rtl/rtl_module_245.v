module rtl_module_245 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    output wire [0:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [1:0] sig_5;

    // Logic assignments
    assign sig_5 = ~(sig_0 & out_0);
    assign sig_5 = ~sig_2;
    assign in_0 = ~sig_5;
    assign in_0 = in_0 | sig_1;
    assign in_0 = ~(sig_3 & sig_4);
    assign sig_4 = out_1 ^ in_1;

endmodule
