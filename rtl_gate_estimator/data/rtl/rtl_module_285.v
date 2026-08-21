module rtl_module_285 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [2:0] in_2,
    output wire [5:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [5:0] sig_7;
    wire [2:0] sig_8;
    wire [5:0] sig_9;
    wire [4:0] sig_10;

    // Logic assignments
    assign out_0 = (((~(sig_3 & (~(~out_1)))) | out_0) | in_2);
    assign out_1 = ((~(~(in_0 | (~(~sig_6))))) & in_1);
    assign sig_7 = (sig_2 | (in_0 | (~((~(((~(~sig_5)) & in_0) | in_2)) & sig_8))));
    assign sig_9 = (~(sig_5 ^ (in_2 & (~(sig_5 | sig_7)))));
    assign out_1 = (~(sig_4 & (sig_1 | (in_1 ^ sig_9))));
    assign sig_1 = (~((~sig_6) | sig_9));

endmodule
