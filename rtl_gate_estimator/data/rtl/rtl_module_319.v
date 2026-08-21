module rtl_module_319 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    output wire [0:0] out_0,
    output wire [4:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;

    // Logic assignments
    assign out_0 = (((~(sig_1 | (in_0 & (sig_1 ^ sig_3)))) ^ out_2) ^ in_1);
    assign out_1 = (sig_1 & (~(~(sig_3 | out_2))));
    assign out_2 = (((((sig_4 | out_1) | sig_4) & in_2) & in_0) & out_2);
    assign out_0 = (~((~(((~(out_0 | (~((out_2 ^ (~(~(in_2 & in_0)))) & out_2)))) & out_0) & in_2)) | in_0));
    assign sig_3 = (~(sig_3 & (~(sig_4 | sig_4))));
    assign out_1 = (~(~(sig_1 | (sig_1 ^ (~((in_0 ^ (~(sig_2 & (~(sig_3 | in_0))))) & out_0))))));
    assign out_0 = (~(~out_1));

endmodule
