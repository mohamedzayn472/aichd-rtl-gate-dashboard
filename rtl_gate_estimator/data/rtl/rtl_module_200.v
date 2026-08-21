module rtl_module_200 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    output wire [6:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [7:0] sig_7;
    wire [2:0] sig_8;
    wire [4:0] sig_9;
    wire [5:0] sig_10;
    wire [1:0] sig_11;
    wire [7:0] sig_12;
    wire [0:0] sig_13;
    wire [4:0] sig_14;
    wire [0:0] sig_15;
    wire [7:0] sig_16;
    wire [5:0] sig_17;
    wire [5:0] sig_18;
    wire [3:0] sig_19;
    wire [0:0] sig_20;
    wire [5:0] sig_21;

    // Logic assignments
    assign out_0 = (~(in_1 & (~(sig_16 | (~(sig_10 | sig_13))))));
    assign out_0 = (sig_10 ^ (sig_3 & out_0));
    assign sig_14 = ((sig_4 | (~(sig_0 & sig_7))) & out_0);
    assign sig_5 = (~((sig_20 ^ (sig_6 | (~(~(sig_14 & sig_21))))) & sig_6));
    assign sig_15 = (~(sig_10 | in_0));

endmodule
