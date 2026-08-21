module rtl_module_217 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    output wire [7:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [6:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [1:0] sig_6;

    // Logic assignments
    assign out_0 = ~(in_1 | in_0);
    assign sig_1 = ~sig_0;
    assign sig_6 = sig_1 | sig_4;

endmodule
