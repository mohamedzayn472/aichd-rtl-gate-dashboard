module rtl_module_335 (
input wire [6:0] in_0,
    input wire [3:0] in_1,
    input wire [0:0] in_2,
    input wire [2:0] in_3,
    input wire [2:0] in_4,
    input wire [7:0] in_5,
    output wire [6:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [0:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [1:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [3:0] sig_10;
    wire [6:0] sig_11;
    wire [6:0] sig_12;
    wire [4:0] sig_13;
    wire [4:0] sig_14;
    wire [2:0] sig_15;

    // Logic assignments
    assign out_0 = (~(~((in_5 ^ (~sig_0)) ^ sig_4)));
    assign out_1 = ((((~(sig_8 & (~(~(sig_2 & sig_9))))) ^ in_1) ^ out_1) ^ sig_11);
    assign sig_15 = (~(sig_12 & sig_6));
    assign sig_9 = ((in_1 | (~((~(sig_0 & sig_12)) | in_5))) ^ sig_3);
    assign sig_11 = (~((~(((~in_3) ^ in_5) | sig_8)) | in_2));
    assign sig_1 = (sig_13 & (~(~((sig_6 | (sig_9 ^ (sig_13 | sig_1))) & sig_4))));
    assign out_1 = (~(sig_5 & (sig_13 & (~(out_0 & sig_9)))));
    assign sig_9 = (~((~(sig_3 | out_0)) & sig_2));

endmodule
