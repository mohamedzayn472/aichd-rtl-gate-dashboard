module rtl_module_39 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [1:0] in_2,
    input wire [4:0] in_3,
    input wire [6:0] in_4,
    input wire [3:0] in_5,
    output wire [0:0] out_0,
    output wire [3:0] out_1,
    output wire [1:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [2:0] sig_9;

    // Logic assignments
    assign out_0 = ~(sig_2 & in_5);
    assign in_4 = sig_2 ^ in_3;
    assign sig_4 = sig_7 & sig_2;
    assign in_2 = ~(sig_2 & out_2);
    assign in_2 = ~(sig_9 | sig_8);
    assign sig_5 = ~(in_1 & sig_9);
    assign in_5 = ~(sig_5 & in_5);
    assign in_3 = out_2 ^ in_3;
    assign out_0 = in_0 | in_1;
    assign sig_1 = in_1 & sig_9;
    assign sig_6 = in_4 ^ in_5;
    assign out_1 = sig_7 & sig_1;

endmodule
