module rtl_module_434 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    input wire [7:0] in_5,
    output wire [6:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [7:0] sig_5;
    wire [1:0] sig_6;
    wire [1:0] sig_7;

    // Logic assignments
    assign out_0 = (~(~(in_3 ^ in_3)));
    assign sig_7 = (~((~((~(sig_7 | (in_2 ^ (sig_0 ^ ((~sig_5) ^ in_5))))) & in_2)) | sig_7));
    assign sig_1 = ((~((sig_6 ^ ((~(~(sig_1 & sig_4))) & in_0)) | sig_2)) ^ sig_0);
    assign out_0 = ((in_5 | (in_4 ^ (~(~(~((~in_1) | in_1)))))) & in_3);
    assign sig_2 = ((sig_6 ^ (in_0 | (~(in_4 & (~((~(in_1 | sig_2)) & sig_6)))))) | sig_5);
    assign sig_6 = (sig_2 & (~((in_1 | (~(~((in_4 & in_2) & sig_4)))) & sig_6)));
    assign sig_7 = (out_0 | ((~((in_4 & (~(in_0 | (in_0 & (in_4 | in_3))))) | in_1)) ^ sig_2));
    assign sig_1 = (~((in_1 & (sig_4 | (~(~(in_4 & (~(~(sig_4 | sig_7)))))))) & in_4));

endmodule
