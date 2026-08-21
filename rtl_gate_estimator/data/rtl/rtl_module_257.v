module rtl_module_257 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [3:0] in_3,
    input wire [6:0] in_4,
    input wire [1:0] in_5,
    input wire [6:0] in_6,
    input wire [5:0] in_7,
    output wire [2:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [5:0] out_3,
    output wire [0:0] out_4,
    output wire [7:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [6:0] sig_9;

    // Logic assignments
    assign out_0 = ((in_1 | (~(out_1 & out_6))) ^ sig_6);
    assign out_1 = (sig_6 | (~(~(sig_9 | (~(sig_6 | (~((~(in_2 & in_1)) | sig_6))))))));
    assign out_2 = (~((~(sig_9 & (~in_2))) | out_1));
    assign out_3 = (~((~((~(~((~(in_6 & (~(in_7 & in_6)))) & sig_0))) ^ sig_5)) & sig_0));
    assign out_4 = (sig_9 & (~(in_7 | in_7)));
    assign out_5 = ((~(sig_5 ^ (in_3 & (~(sig_0 & sig_9))))) | in_2);
    assign out_6 = (in_4 ^ ((~(in_6 | ((~in_5) ^ sig_0))) & sig_3));
    assign out_6 = (out_4 & (in_7 & (~(out_3 | sig_9))));
    assign out_6 = (sig_0 & ((~(sig_2 & (~(out_2 & (~(out_4 & (~(out_4 & (~(~out_3)))))))))) & sig_2));
    assign sig_9 = (~(~(out_1 | (sig_4 | ((~(sig_1 | (~(sig_7 & sig_3)))) ^ sig_2)))));
    assign sig_3 = (in_2 & (~(~(~(sig_4 | (~((~((~(sig_6 | sig_6)) & in_5)) & sig_5)))))));
    assign out_0 = ((sig_6 & (in_4 & sig_7)) | out_5);
    assign out_5 = (~(~(out_1 & (~(~((~(~((~((sig_9 | out_4) & sig_2)) | sig_3))) | sig_9))))));
    assign sig_3 = (~((out_6 & (sig_4 | ((~sig_2) & in_0))) & out_3));
    assign out_1 = (~(((~(in_4 & (out_0 | out_3))) ^ sig_0) & sig_5));

endmodule
