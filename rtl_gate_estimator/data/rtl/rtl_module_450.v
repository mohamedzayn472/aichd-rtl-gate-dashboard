module rtl_module_450 (
input wire [7:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    input wire [5:0] in_5,
    input wire [0:0] in_6,
    input wire [5:0] in_7,
    output wire [4:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [2:0] sig_0;
    wire [4:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;

    // Logic assignments
    assign out_0 = (out_1 & ((sig_6 | sig_6) ^ in_3));
    assign out_1 = (~((sig_2 & (~(sig_1 | sig_1))) | in_4));
    assign sig_1 = ((~in_5) & in_1);
    assign sig_0 = (~(~(~(in_6 | (out_0 | sig_3)))));
    assign sig_5 = ((~(out_1 | (in_4 | (~(sig_1 & sig_4))))) ^ sig_0);
    assign sig_6 = (~(in_2 & (~(in_6 | ((sig_6 | (~(in_5 & (~((in_5 ^ out_0) & out_0))))) | out_0)))));
    assign out_0 = ((sig_4 & (~(~((in_3 | (~(sig_3 | (~(sig_5 & out_1))))) & sig_2)))) ^ in_4);
    assign out_0 = ((~((in_1 | (~(sig_4 & sig_5))) | sig_2)) | out_1);
    assign out_0 = (~(~(sig_0 | (~((~(in_6 & (~(sig_4 & (out_1 ^ sig_5))))) & sig_6)))));
    assign sig_5 = ((sig_4 & (~((~(sig_0 | in_6)) & sig_0))) ^ sig_2);
    assign sig_4 = (~(~(out_1 & (sig_4 | (~(in_0 & out_0))))));

endmodule
