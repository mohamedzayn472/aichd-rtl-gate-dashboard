module rtl_module_289 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [7:0] in_3,
    input wire [3:0] in_4,
    output wire [4:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [6:0] sig_6;

    // Logic assignments
    assign in_1 = ~(in_4 & in_3);
    assign sig_1 = in_2 | sig_4;
    assign sig_4 = ~(in_4 & sig_1);
    assign out_0 = ~(sig_1 | in_4);
    assign in_0 = sig_4 ^ sig_4;
    assign sig_4 = ~(out_0 & in_0);
    assign in_0 = ~(in_1 | in_0);

endmodule
