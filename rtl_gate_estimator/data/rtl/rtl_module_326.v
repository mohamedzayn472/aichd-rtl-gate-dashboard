module rtl_module_326 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [2:0] in_4,
    output wire [4:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [1:0] sig_6;
    wire [0:0] sig_7;
    wire [7:0] sig_8;
    wire [2:0] sig_9;

    // Logic assignments
    assign out_0 = (in_0 | (sig_6 | in_0));
    assign out_1 = (~(out_3 & ((~((sig_2 ^ sig_2) & in_3)) ^ in_2)));
    assign out_2 = (in_0 ^ (~((sig_4 & (out_2 | out_3)) | out_3)));
    assign out_3 = (~(out_3 & (~((~(sig_6 & in_2)) | sig_0))));
    assign out_0 = (((~(~out_2)) & in_0) | sig_0);
    assign sig_6 = (((out_0 ^ in_1) & in_4) ^ in_2);
    assign sig_9 = (sig_2 | (sig_7 & ((~(sig_0 | sig_6)) | sig_0)));
    assign sig_8 = (out_2 ^ ((~(sig_1 | (out_0 | sig_7))) & out_3));
    assign out_1 = ((in_1 | (in_4 | (sig_8 & (~((~sig_3) & in_3))))) & in_0);
    assign sig_0 = (out_3 ^ (~((~((~(~(((in_4 ^ (~(in_0 & sig_5))) & sig_9) | in_3))) & in_1)) | sig_4)));
    assign sig_9 = (~(sig_3 | (out_0 & in_3)));

endmodule
