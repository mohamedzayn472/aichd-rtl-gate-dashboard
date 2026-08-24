module rtl_module_346 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    input wire [2:0] in_4,
    input wire [4:0] in_5,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [2:0] sig_8;
    wire [6:0] sig_9;
    wire [1:0] sig_10;
    wire [3:0] sig_11;
    wire [5:0] sig_12;

    // Logic assignments
    assign out_0 = ((sig_7 ^ (~(sig_11 & sig_0))) ^ in_2);
    assign out_1 = ((~(in_4 | ((in_0 ^ in_2) ^ sig_5))) & out_1);
    assign out_2 = (~(sig_10 ^ (sig_6 & sig_5)));
    assign out_3 = (sig_9 ^ (~(out_2 | (~(out_3 & ((~((sig_8 & in_5) | in_4)) | sig_0))))));
    assign sig_3 = (sig_7 | ((~(~((~(in_4 | sig_1)) | in_4))) | sig_7));
    assign sig_10 = (~(out_0 & ((~(sig_12 & (~(sig_8 | (sig_8 ^ (~sig_11)))))) & sig_12)));
    assign sig_2 = (~(~(out_1 ^ sig_9)));
    assign sig_12 = (~((sig_0 ^ (~(sig_8 | (~((out_2 & sig_4) & out_1))))) & in_1));
    assign sig_12 = (~((~(sig_0 | in_3)) | out_0));
    assign sig_7 = (in_3 & (out_2 | (~(in_3 & (~(sig_11 | sig_1))))));

endmodule
