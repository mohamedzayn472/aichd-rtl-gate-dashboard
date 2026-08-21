module rtl_module_457 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [5:0] in_3,
    input wire [1:0] in_4,
    input wire [7:0] in_5,
    input wire [3:0] in_6,
    output wire [1:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [2:0] sig_4;
    wire [4:0] sig_5;
    wire [0:0] sig_6;
    wire [3:0] sig_7;
    wire [6:0] sig_8;

    // Logic assignments
    assign out_0 = (~(sig_7 & (sig_8 | out_0)));
    assign sig_8 = (~((~(in_2 & (~(in_5 ^ sig_4)))) & in_6));
    assign out_0 = ((~(out_0 & (~((~(sig_3 | (sig_0 ^ (in_5 ^ sig_0)))) & sig_6)))) | in_0);
    assign sig_8 = (~((((sig_5 ^ in_1) ^ in_2) & in_6) | in_1));
    assign sig_4 = ((sig_1 & (~((~((~((~((~(sig_5 | in_6)) & in_1)) | in_6)) & sig_4)) & sig_5))) | in_1);
    assign sig_1 = (in_3 & (in_3 | (sig_2 ^ (~(sig_0 & out_0)))));
    assign sig_5 = ((sig_4 | (in_5 & sig_2)) | in_5);
    assign sig_6 = (~(sig_1 | (~((in_4 ^ (~(in_5 & sig_4))) | sig_1))));
    assign sig_7 = (~(in_5 & (sig_2 ^ (~(~in_5)))));

endmodule
