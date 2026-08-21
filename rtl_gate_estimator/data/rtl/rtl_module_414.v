module rtl_module_414 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [3:0] in_2,
    input wire [4:0] in_3,
    input wire [2:0] in_4,
    input wire [4:0] in_5,
    input wire [4:0] in_6,
    output wire [1:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [1:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [4:0] sig_4;
    wire [6:0] sig_5;
    wire [6:0] sig_6;

    // Logic assignments
    assign out_0 = (in_5 | (~(in_2 & (~((~sig_3) ^ sig_6)))));
    assign out_1 = (~(sig_2 | (~(in_4 | (~((~(sig_2 & in_0)) | in_2))))));
    assign out_0 = (((~((~(out_0 & in_6)) & in_2)) | sig_4) & sig_4);
    assign out_0 = (~(~(~(~(out_0 | in_6)))));
    assign out_1 = (~(~(((~((~(sig_3 | sig_5)) | in_6)) | in_1) | sig_3)));
    assign sig_6 = (((~(in_2 & ((((~(~(in_4 | out_0))) & sig_3) ^ in_3) & in_3))) ^ in_4) ^ out_0);
    assign sig_4 = (~(in_1 & (in_4 | (sig_1 | sig_2))));
    assign sig_1 = (in_0 | (~(in_6 | (in_5 | in_0))));
    assign out_0 = (((sig_1 ^ sig_1) | sig_1) | sig_3);

endmodule
