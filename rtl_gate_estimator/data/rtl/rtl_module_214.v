module rtl_module_214 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    output wire [4:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [3:0] sig_3;
    wire [0:0] sig_4;

    // Logic assignments
    assign out_0 = (~((~((~(~(sig_3 & (~((~(out_2 | (~in_1))) & out_0))))) | sig_4)) | sig_4));
    assign out_1 = (~(out_2 ^ ((~((~(out_1 & sig_4)) & sig_1)) & sig_2)));
    assign out_2 = ((out_0 ^ (sig_4 | sig_3)) | sig_0);
    assign sig_1 = ((((~((~((out_0 & in_0) | sig_2)) & sig_1)) | in_1) ^ out_2) & sig_3);
    assign sig_1 = ((~sig_0) & sig_4);
    assign sig_0 = (~(out_0 ^ (~(sig_1 & out_2))));

endmodule
