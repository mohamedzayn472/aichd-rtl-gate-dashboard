module rtl_module_173 (
input wire [4:0] in_0,
    input wire [1:0] in_1,
    input wire [1:0] in_2,
    input wire [5:0] in_3,
    output wire [6:0] out_0,
    output wire [3:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;
    wire [6:0] sig_3;
    wire [3:0] sig_4;
    wire [6:0] sig_5;
    wire [3:0] sig_6;
    wire [7:0] sig_7;
    wire [2:0] sig_8;
    wire [6:0] sig_9;

    // Logic assignments
    assign out_0 = ((sig_3 & (~(~(sig_2 & ((~(sig_4 | out_2)) ^ sig_6))))) | in_1);
    assign out_1 = (~(in_3 & (out_2 | (~(sig_7 | (sig_1 | (in_3 & (~(sig_1 | in_2)))))))));
    assign out_2 = (in_3 | (~(~(in_3 & (~(~(sig_5 & (~sig_8))))))));
    assign sig_4 = (~(((~(out_2 ^ (sig_1 ^ (in_1 | in_0)))) & out_1) & out_2));
    assign sig_5 = ((~((~(~(in_3 | (~(sig_5 ^ sig_8))))) | sig_0)) ^ sig_1);
    assign sig_2 = (~((out_1 | ((sig_2 | (sig_1 | (sig_5 & in_2))) & in_3)) | in_3));
    assign sig_9 = ((~(~((~(sig_1 & (~(sig_4 & out_2)))) & sig_2))) | in_0);
    assign sig_6 = (~(sig_2 & (~(sig_1 | (~(sig_7 | (~(sig_1 | in_0))))))));

endmodule
