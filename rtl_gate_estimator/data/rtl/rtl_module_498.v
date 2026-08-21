module rtl_module_498 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [6:0] in_2,
    output wire [6:0] out_0,
    output wire [0:0] out_1,
    output wire [0:0] out_2,
    output wire [5:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [3:0] sig_3;
    wire [1:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [6:0] sig_10;

    // Logic assignments
    assign out_0 = (~(sig_0 ^ out_3));
    assign out_1 = (~(~(sig_8 | (out_0 & (~((~(~((~(out_3 & out_0)) & in_2))) & sig_3))))));
    assign out_2 = (sig_9 | ((sig_2 & (~(in_0 | (~(sig_1 & sig_9))))) & in_0));
    assign out_3 = (sig_7 ^ (~((~(out_1 | out_3)) & sig_1)));
    assign out_4 = (~(~(sig_8 & sig_3)));
    assign sig_1 = (sig_8 | (out_4 | ((~(out_1 | (((out_4 & sig_4) ^ out_2) ^ sig_3))) & sig_3)));
    assign out_4 = (in_1 & ((~(sig_7 | (sig_5 & sig_5))) ^ out_1));
    assign out_4 = ((((~(~sig_8)) & sig_8) | sig_2) | sig_9);
    assign out_3 = (~(in_0 ^ sig_4));

endmodule
