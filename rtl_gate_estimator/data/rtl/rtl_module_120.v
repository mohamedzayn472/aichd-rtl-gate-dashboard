module rtl_module_120 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    output wire [4:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [3:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [1:0] sig_5;
    wire [6:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;

    // Logic assignments
    assign out_0 = ((~(sig_3 & (~(~((~sig_0) & sig_1))))) | sig_8);
    assign sig_2 = (in_2 & ((~((~((~(sig_8 & ((~(sig_1 & sig_7)) ^ sig_7))) | sig_6)) | in_1)) ^ sig_2));
    assign sig_1 = (~(sig_3 | (sig_1 & (~(~((~((sig_1 & sig_7) & in_1)) & out_0))))));
    assign sig_0 = (~(sig_7 & ((~(sig_8 & (in_2 | (~(in_0 | (~(~sig_1))))))) ^ sig_5)));
    assign sig_3 = ((sig_2 | (~sig_7)) & sig_8);

endmodule
