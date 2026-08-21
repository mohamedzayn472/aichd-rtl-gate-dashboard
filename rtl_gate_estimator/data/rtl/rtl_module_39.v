module rtl_module_39 (
input wire [2:0] in_0,
    input wire [4:0] in_1,
    input wire [1:0] in_2,
    output wire [6:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [5:0] sig_6;

    // Logic assignments
    assign out_0 = (~((sig_3 | (~(~(((~((~(out_0 & out_0)) | in_1)) & sig_1) | sig_6)))) & sig_0));
    assign sig_3 = (sig_0 & ((~in_0) & in_0));
    assign sig_1 = (sig_2 & (~(in_1 | (in_2 | in_0))));
    assign sig_3 = ((~((~(~((sig_0 | in_1) & in_2))) & out_0)) | sig_3);

endmodule
