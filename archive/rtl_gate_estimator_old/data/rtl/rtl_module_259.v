module rtl_module_259 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [6:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    output wire [5:0] out_0,
    output wire [3:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;

    // Logic assignments
    assign sig_0 = ~(sig_5 & in_0);
    assign sig_2 = in_4 & out_0;
    assign in_1 = ~(sig_3 | sig_4);
    assign sig_3 = out_0 ^ sig_0;
    assign in_4 = ~(in_3 | out_1);
    assign in_2 = ~(out_1 | sig_4);
    assign sig_2 = ~(sig_1 & sig_4);
    assign sig_4 = ~(in_3 & sig_1);

endmodule
