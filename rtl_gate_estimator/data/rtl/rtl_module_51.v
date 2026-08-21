module rtl_module_51 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    input wire [3:0] in_3,
    input wire [1:0] in_4,
    output wire [0:0] out_0,
    output wire [0:0] out_1,
    output wire [4:0] out_2,
    output wire [3:0] out_3,
    output wire [1:0] out_4,
    output wire [1:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;

    // Logic assignments
    assign out_0 = (((~(in_4 | (sig_5 ^ (~((~((out_3 ^ (~(in_0 | in_3))) & sig_2)) | in_2))))) ^ out_3) | in_0);
    assign out_1 = (in_0 & ((~(out_3 | (out_3 & sig_6))) | out_3));
    assign out_2 = (sig_3 | (~(sig_6 & (~((in_4 | in_3) & sig_5)))));
    assign out_3 = (out_4 ^ (~((sig_5 ^ sig_4) & out_3)));
    assign out_4 = ((~sig_2) | in_4);
    assign out_5 = ((~(out_1 & sig_6)) | in_2);
    assign out_6 = (~((out_0 & (sig_6 ^ (~((~(out_2 | out_5)) | out_4)))) | sig_3));
    assign sig_0 = (~(in_4 & (~(((~((out_6 & (~out_2)) & sig_6)) ^ in_0) | in_4))));
    assign sig_4 = (~((~((((~(in_2 ^ sig_4)) ^ in_1) | out_6) | out_3)) & out_1));
    assign out_6 = (out_4 & (sig_6 ^ in_4));
    assign out_5 = (in_3 | ((~((((~(out_1 | sig_1)) | in_2) ^ in_1) | sig_6)) & out_0));
    assign sig_4 = (sig_4 ^ ((~(out_1 & (~(~((in_4 ^ out_6) | sig_1))))) | sig_4));
    assign out_3 = (~((sig_5 | (~(~(in_4 & out_4)))) & sig_6));
    assign sig_6 = (~(~(~(in_4 & (~(in_0 & out_1))))));

endmodule
