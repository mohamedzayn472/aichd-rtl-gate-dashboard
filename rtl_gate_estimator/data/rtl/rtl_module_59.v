module rtl_module_59 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [7:0] in_4,
    input wire [1:0] in_5,
    input wire [0:0] in_6,
    output wire [5:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [2:0] sig_1;

    // Logic assignments
    assign out_0 = (in_2 | (in_5 & (~((in_3 & (~(~((~(in_0 | in_5)) | sig_1)))) & in_0))));
    assign out_0 = ((~(((~((~(~(~(in_0 | in_1)))) | sig_1)) & in_4) & sig_0)) ^ out_0);
    assign out_0 = ((~((~(in_1 | ((in_4 ^ sig_1) & in_5))) | sig_0)) | in_1);
    assign sig_0 = ((~(in_3 & (~(in_2 | in_0)))) ^ sig_0);
    assign out_0 = ((~(in_6 | (~(in_3 | in_2)))) ^ in_2);
    assign out_0 = (~((in_4 | (in_2 ^ in_3)) | in_4));
    assign sig_1 = (((~(sig_1 | (~((~(~(in_0 | in_2))) & out_0)))) ^ in_6) ^ in_4);
    assign out_0 = (~(in_5 & (~(sig_0 | ((sig_1 & (~(in_0 & (in_4 | in_3)))) ^ in_2)))));

endmodule
