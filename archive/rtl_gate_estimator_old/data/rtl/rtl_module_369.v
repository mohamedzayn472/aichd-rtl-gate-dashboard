module rtl_module_369 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    input wire [2:0] in_3,
    input wire [1:0] in_4,
    input wire [3:0] in_5,
    input wire [6:0] in_6,
    output wire [1:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;

    // Logic assignments
    assign in_5 = in_2 & sig_2;
    assign sig_3 = ~(sig_0 & sig_0);
    assign sig_0 = sig_3 & in_4;
    assign sig_2 = out_0 ^ sig_2;
    assign in_1 = ~(in_5 | in_3);
    assign in_4 = in_4 & in_5;
    assign in_0 = out_1 & in_2;
    assign in_2 = out_1 & sig_3;
    assign out_0 = ~out_1;

endmodule
