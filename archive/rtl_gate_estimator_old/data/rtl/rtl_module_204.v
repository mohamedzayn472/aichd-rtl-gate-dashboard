module rtl_module_204 (
input wire [6:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] in_2,
    input wire [4:0] in_3,
    input wire [6:0] in_4,
    input wire [6:0] in_5,
    input wire [1:0] in_6,
    output wire [1:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3,
    output wire [7:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [1:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;

    // Logic assignments
    assign out_3 = ~(sig_4 | out_3);
    assign out_1 = in_2 ^ in_5;
    assign sig_6 = ~(in_3 & out_3);
    assign sig_0 = in_6 & in_4;
    assign in_4 = sig_5 ^ in_0;
    assign in_1 = out_2 ^ in_0;
    assign out_2 = sig_1 & out_4;
    assign in_0 = ~(sig_2 & in_4);
    assign sig_0 = out_1 ^ in_6;
    assign out_1 = out_1 | out_1;
    assign in_3 = in_5 | sig_5;
    assign out_3 = ~(in_2 & in_4);
    assign in_4 = ~(out_2 | in_4);
    assign out_1 = out_2 & in_2;
    assign in_5 = ~(sig_0 & sig_6);
    assign sig_4 = ~(sig_0 | sig_1);
    assign in_1 = ~sig_6;
    assign sig_3 = sig_5 & in_0;
    assign sig_4 = sig_5 | out_0;
    assign sig_0 = ~(in_4 & out_1);
    assign out_2 = ~(sig_6 & in_5);
    assign out_5 = out_2 | sig_2;
    assign in_2 = ~sig_6;
    assign in_0 = ~(sig_6 & in_2);
    assign in_2 = ~(in_4 & in_1);
    assign sig_1 = sig_5 ^ sig_1;
    assign sig_3 = ~sig_2;

endmodule
