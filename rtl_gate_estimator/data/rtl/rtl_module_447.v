module rtl_module_447 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2,
    output wire [1:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [7:0] sig_2;
    wire [4:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [2:0] sig_7;
    wire [7:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [2:0] sig_13;

    // Logic assignments
    assign out_0 = (in_0 ^ ((~(out_1 | (~(sig_13 & (~(sig_13 | (~(sig_0 & ((out_4 | sig_3) ^ in_2))))))))) & in_2));
    assign out_1 = (~(out_3 | (out_4 & (~(out_3 | sig_11)))));
    assign out_2 = (sig_3 ^ (~(sig_1 ^ (~(in_0 & ((sig_11 & sig_7) ^ sig_7))))));
    assign out_3 = (~(sig_5 & in_0));
    assign out_4 = ((~(sig_7 & (~(sig_4 & sig_10)))) ^ sig_10);
    assign sig_2 = (~(~(sig_11 & out_4)));
    assign sig_11 = (~((~(sig_0 & (~(~(sig_1 & out_1))))) | sig_9));
    assign sig_7 = (out_3 ^ (~((sig_9 & in_3) | sig_0)));
    assign sig_12 = (~(~(((~(sig_2 & sig_9)) | out_2) | sig_4)));
    assign out_0 = (~(((~((~(sig_7 | (((out_4 & sig_3) ^ sig_7) & sig_12))) | sig_7)) | sig_9) | in_2));
    assign sig_9 = ((out_4 | sig_0) & sig_2);
    assign sig_7 = (~(~(out_0 & ((((~sig_6) | sig_0) & sig_6) ^ out_1))));

endmodule
