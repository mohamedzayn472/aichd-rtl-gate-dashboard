module rtl_module_387 (
input wire [3:0] in_0,
    input wire [7:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [3:0] in_4,
    input wire [1:0] in_5,
    input wire [0:0] in_6,
    output wire [6:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;

    // Logic assignments
    assign out_0 = (~(in_1 | (in_0 & (~(~in_4)))));
    assign out_1 = ((~(sig_0 & (in_3 ^ in_4))) ^ sig_0);
    assign out_0 = ((~((~(out_1 & (sig_4 | (~((in_5 ^ sig_2) | in_6))))) & out_1)) & in_5);
    assign sig_2 = (in_1 & (~((((~(out_0 & sig_3)) | out_1) & in_6) | sig_4)));
    assign out_1 = (sig_3 ^ (out_1 | sig_0));
    assign out_1 = (out_1 ^ (((sig_0 ^ sig_0) ^ sig_3) | in_5));
    assign sig_3 = (~(sig_0 & (~(~((~(sig_2 | in_3)) & sig_1)))));
    assign out_1 = (~(~((in_5 & (~(in_6 | sig_3))) & in_1)));
    assign sig_2 = (sig_2 & (sig_3 | (sig_3 | (~(in_3 | in_1)))));
    assign out_1 = ((~((in_5 | sig_3) ^ in_1)) | sig_2);

endmodule
