module rtl_module_331 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    input wire [0:0] in_4,
    input wire [3:0] in_5,
    input wire [5:0] in_6,
    input wire [6:0] in_7,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2,
    output wire [6:0] out_3,
    output wire [1:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [5:0] sig_6;

    // Logic assignments
    assign out_0 = ((~(~(~(((out_4 & out_2) ^ sig_1) | sig_6)))) & in_6);
    assign out_1 = (~(in_1 | (sig_6 & (sig_4 ^ (~(out_1 | (out_3 ^ (in_7 ^ (~(in_2 | sig_5))))))))));
    assign out_2 = (out_0 & (~(out_0 & (~(in_4 & (~out_2))))));
    assign out_3 = (~((~((~(sig_3 & (~(sig_2 | (~(in_1 | in_6)))))) & out_2)) | out_5));
    assign out_4 = (~((((~(in_6 | in_0)) & out_4) ^ in_5) & sig_5));
    assign out_5 = ((~(~(sig_5 | out_0))) & out_1);
    assign out_5 = (~((~(in_2 | sig_1)) & in_0));
    assign out_1 = (~(out_5 | (~(((~(out_5 & (~(sig_1 | (~(out_1 | in_0)))))) | out_2) | in_2))));
    assign sig_2 = (~(sig_5 ^ (~((~((out_5 & (~(in_5 | (~sig_6)))) & sig_3)) | in_6))));
    assign sig_2 = (((~(in_4 | in_7)) ^ in_4) & in_1);
    assign sig_1 = (~(sig_0 | ((in_2 | (out_2 | (out_1 & (~in_6)))) & in_5)));
    assign out_4 = (~((~(out_4 ^ (((in_1 & (in_5 & (sig_6 & out_5))) & in_1) | out_3))) | sig_6));
    assign out_1 = (~(in_2 & (out_5 ^ in_3)));
    assign sig_5 = (~(in_5 | (~(sig_1 | in_3))));
    assign sig_5 = ((in_5 & out_1) & sig_2);
    assign out_1 = (~(~(in_6 & out_3)));

endmodule
