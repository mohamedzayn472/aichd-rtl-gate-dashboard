module rtl_module_308 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    input wire [2:0] in_3,
    input wire [0:0] in_4,
    output wire [2:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [2:0] sig_10;

    // Logic assignments
    assign sig_2 = sig_1 | sig_0;
    assign sig_0 = sig_2 & sig_6;
    assign in_1 = in_4 & sig_6;
    assign sig_5 = ~(sig_6 | in_1);
    assign sig_2 = sig_5 & sig_4;
    assign in_1 = sig_2 ^ sig_7;
    assign out_0 = ~(sig_4 & sig_1);

endmodule
