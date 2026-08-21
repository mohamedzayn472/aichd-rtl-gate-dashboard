module rtl_module_92 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    output wire [6:0] out_0,
    output wire [1:0] out_1,
    output wire [1:0] out_2,
    output wire [0:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [1:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;
    wire [4:0] sig_8;

    // Logic assignments
    assign in_0 = ~(sig_0 | sig_0);
    assign sig_3 = ~(sig_3 & sig_2);
    assign sig_8 = ~(in_0 | in_2);
    assign sig_5 = sig_8 | sig_8;
    assign out_4 = sig_4 | out_4;
    assign in_2 = ~(sig_0 & in_0);
    assign sig_3 = ~(sig_3 & sig_6);
    assign in_0 = sig_0 | sig_3;
    assign out_3 = ~(sig_8 & sig_2);

endmodule
