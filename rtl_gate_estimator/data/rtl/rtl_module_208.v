module rtl_module_208 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    output wire [5:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [6:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;

    // Logic assignments
    assign out_0 = (~(sig_2 | ((~sig_8) & in_0)));
    assign sig_7 = (~((~(sig_7 | sig_2)) | in_3));
    assign out_0 = (in_1 & (~((~(~(((in_3 & (~((sig_1 ^ sig_7) & sig_5))) & out_0) | sig_6))) | sig_3)));
    assign sig_0 = ((~(~((~(sig_1 | (~((in_2 | (sig_8 & (~in_1))) | in_0)))) & in_0))) | sig_8);
    assign sig_2 = (sig_6 ^ (~(~((sig_2 ^ ((sig_1 ^ (~(~(sig_0 & sig_3)))) | sig_1)) | out_0))));

endmodule
