module rtl_module_73 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [5:0] in_2,
    input wire [2:0] in_3,
    input wire [2:0] in_4,
    input wire [3:0] in_5,
    input wire [6:0] in_6,
    output wire [1:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;

    // Logic assignments
    assign out_0 = ((~(out_1 | (~(in_5 | ((~(in_6 & (out_1 ^ out_2))) ^ in_6))))) | in_1);
    assign out_1 = (~(in_1 | (~(in_3 | ((~((in_1 & (~(out_2 & in_1))) | in_4)) | in_6)))));
    assign out_2 = ((out_2 & (in_4 & in_1)) & in_1);
    assign sig_0 = (sig_0 ^ (~(in_6 | (~((~(sig_2 | in_4)) & in_5)))));
    assign out_1 = (~((~in_0) | sig_0));
    assign sig_0 = (~(sig_2 | (~(~(~(out_2 & in_1))))));
    assign sig_2 = (~(out_1 & (~(in_3 & (~((~in_4) & sig_1))))));
    assign sig_0 = (~(~(((sig_1 | (~(sig_0 & in_0))) ^ sig_0) | in_6)));
    assign out_2 = (~(out_1 & (~((sig_1 & sig_0) | in_2))));
    assign out_1 = (~((((~(((~(in_4 | (~(in_2 & sig_0)))) & in_0) & in_5)) ^ out_0) & in_1) | sig_0));

endmodule
