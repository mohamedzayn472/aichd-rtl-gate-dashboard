module rtl_module_51 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [3:0] in_2,
    output wire [4:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [4:0] sig_9;

    // Logic assignments
    assign out_0 = (~((sig_7 | (~(sig_3 | ((~(sig_2 | (~(out_0 & in_0)))) & out_0)))) & in_1));
    assign out_1 = (~(sig_9 | (sig_6 | ((in_1 & (~((~((~(sig_9 & (sig_7 & sig_5))) | sig_1)) & in_1))) | sig_2))));
    assign sig_3 = (sig_2 | (sig_8 | (sig_4 & (out_0 | (sig_1 | sig_4)))));
    assign sig_7 = ((sig_8 ^ (sig_9 | (out_0 ^ (~(~(out_1 | (out_0 ^ sig_1))))))) | sig_7);
    assign sig_8 = ((~(sig_3 | (~(in_0 | ((~(sig_5 | in_1)) ^ out_0))))) ^ out_1);
    assign sig_1 = (out_1 | ((out_1 | (sig_4 | (~(~(sig_9 | ((~(sig_3 | sig_9)) ^ out_0)))))) ^ sig_8));

endmodule
