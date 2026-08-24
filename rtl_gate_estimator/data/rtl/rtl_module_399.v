module rtl_module_399 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [0:0] in_3,
    input wire [0:0] in_4,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [1:0] sig_4;

    // Logic assignments
    assign out_0 = (~((~(~(in_3 | (~((~(~((sig_3 ^ out_0) | out_2))) | sig_4))))) ^ in_3));
    assign out_1 = (~(sig_4 | (out_2 ^ (~(in_0 | (~(sig_4 & (~(in_4 | out_2)))))))));
    assign out_2 = (sig_4 | (~((~(~(((~((~(sig_1 | sig_0)) & out_2)) ^ in_0) & in_3))) | in_3)));
    assign sig_2 = (~(in_0 & in_0));
    assign out_2 = (in_4 ^ ((~(out_2 ^ in_3)) ^ sig_4));
    assign sig_1 = (sig_0 | (~(in_3 & ((in_2 ^ (sig_2 & in_1)) | out_0))));
    assign sig_1 = (sig_3 | (~(out_1 | (~(in_0 | (sig_3 | in_0))))));
    assign sig_0 = (~(sig_0 | (~((~(in_4 | (~(~((in_2 & in_1) | sig_3))))) & in_3))));
    assign out_2 = (out_0 | (sig_3 & (((~in_1) | out_1) & in_1)));

endmodule
