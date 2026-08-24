module rtl_module_324 (
input wire [3:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [3:0] in_3,
    input wire [0:0] in_4,
    input wire [3:0] in_5,
    input wire [2:0] in_6,
    input wire [2:0] in_7,
    output wire [6:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;

    // Logic assignments
    assign out_0 = (~(~(out_0 & (~((~in_5) & in_7)))));
    assign sig_3 = (sig_2 | (((in_4 | (~(((sig_0 & in_6) ^ sig_0) | sig_0))) | in_3) & in_6));
    assign out_0 = (out_0 | (in_2 & (~(in_5 & in_2))));
    assign sig_2 = (~(~((in_0 | (~(in_1 | in_6))) | in_4)));
    assign sig_0 = (in_0 | (~((~(in_3 | (~(out_0 & in_0)))) | in_6)));
    assign sig_2 = (~((~((~(((~(sig_2 | ((~out_0) & in_3))) & sig_2) & in_1)) ^ sig_3)) | in_6));
    assign sig_3 = ((sig_1 | (~(((in_5 ^ in_4) ^ out_0) & sig_2))) | in_6);
    assign out_0 = (in_6 & (sig_3 & (~((in_4 & sig_0) | in_1))));
    assign sig_0 = (~((in_6 ^ sig_1) & in_1));

endmodule
