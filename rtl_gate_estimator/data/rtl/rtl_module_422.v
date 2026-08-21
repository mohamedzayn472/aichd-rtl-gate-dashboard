module rtl_module_422 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    output wire [7:0] out_0,
    output wire [1:0] out_1,
    output wire [0:0] out_2,
    output wire [5:0] out_3,
    output wire [3:0] out_4,
    output wire [3:0] out_5,
    output wire [4:0] out_6,
    output wire [7:0] out_7
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [7:0] sig_5;
    wire [7:0] sig_6;
    wire [0:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [7:0] sig_10;
    wire [6:0] sig_11;
    wire [2:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [7:0] sig_15;
    wire [2:0] sig_16;

    // Logic assignments
    assign out_0 = ((~(~(in_2 | out_2))) ^ sig_15);
    assign out_1 = (~(sig_14 & (sig_0 & (~((~(sig_2 | in_1)) | sig_14)))));
    assign out_2 = (~(sig_13 ^ (~(sig_15 & sig_11))));
    assign out_3 = ((~(in_2 & (~(~(sig_16 & (~(sig_14 | sig_2))))))) ^ sig_14);
    assign out_4 = (out_5 & (out_6 | ((out_0 | sig_12) & sig_3)));
    assign out_5 = (((~((sig_0 & (sig_1 ^ (sig_9 | out_0))) & out_2)) ^ sig_9) & out_2);
    assign out_6 = (~(sig_13 | (out_5 | sig_14)));
    assign out_7 = (in_2 | (sig_16 & sig_13));
    assign out_2 = (sig_9 & ((~((in_1 ^ (~((~(sig_13 | (~((~sig_1) & out_5)))) & sig_6))) | out_0)) & out_7));
    assign sig_3 = (sig_16 | (~(sig_3 & (~(sig_14 & sig_16)))));
    assign out_1 = (~((~(~((~(sig_16 & (~sig_13))) & out_5))) & sig_5));
    assign sig_15 = ((~((~(out_2 | out_5)) | out_3)) ^ sig_7);
    assign out_6 = (sig_10 ^ (~((~((out_1 & (~(out_2 | out_0))) & sig_11)) | out_6)));
    assign sig_6 = (~(((~(out_3 & ((((~in_2) ^ sig_15) | sig_4) ^ sig_3))) & out_4) | out_4));

endmodule
