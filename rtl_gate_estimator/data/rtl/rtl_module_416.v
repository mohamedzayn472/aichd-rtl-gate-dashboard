module rtl_module_416 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    input wire [6:0] in_3,
    input wire [2:0] in_4,
    input wire [3:0] in_5,
    input wire [3:0] in_6,
    output wire [7:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [0:0] sig_7;
    wire [5:0] sig_8;
    wire [3:0] sig_9;
    wire [0:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [7:0] sig_13;
    wire [5:0] sig_14;

    // Logic assignments
    assign out_0 = (~(in_2 | (sig_6 | ((~((out_1 | in_5) | in_6)) ^ sig_8))));
    assign out_1 = (sig_1 ^ (~(out_1 & ((~(~(sig_7 | (~sig_2)))) ^ out_2))));
    assign out_2 = (in_4 ^ (~((~((sig_7 & (~(sig_14 & (~(sig_5 | out_2))))) ^ sig_14)) | in_5)));
    assign out_3 = (~(sig_4 | (~(out_2 | (~(out_1 | (in_3 ^ sig_13)))))));
    assign sig_5 = (in_1 ^ (sig_11 & (out_3 | (~(~(sig_13 | (~(~sig_6))))))));
    assign out_3 = ((~(sig_3 & (sig_2 | (sig_6 | sig_1)))) ^ out_0);
    assign sig_13 = (out_0 ^ (~(sig_2 | (~(sig_2 | (sig_6 | in_4))))));
    assign sig_6 = (sig_13 & (sig_6 ^ (sig_14 | (~((in_6 ^ out_3) | sig_12)))));
    assign sig_11 = (~((in_5 & (~(in_5 | in_5))) | out_2));
    assign out_3 = ((~(~((~(sig_7 & sig_6)) & sig_14))) ^ sig_2);
    assign sig_13 = (sig_2 | (sig_2 & (~(~((~((in_2 & (~sig_9)) | out_1)) | in_1)))));

endmodule
