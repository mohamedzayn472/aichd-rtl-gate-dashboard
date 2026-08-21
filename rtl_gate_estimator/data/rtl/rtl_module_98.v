module rtl_module_98 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [4:0] in_3,
    input wire [1:0] in_4,
    input wire [7:0] in_5,
    output wire [4:0] out_0
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;

    // Logic assignments
    assign out_0 = (~((out_0 | (~(in_5 ^ sig_0))) ^ sig_1));
    assign sig_0 = ((~(~(in_3 & sig_0))) ^ in_0);
    assign sig_3 = (in_2 ^ (~(~sig_8)));
    assign sig_1 = (~(~(((~(~(sig_5 | sig_9))) & sig_4) ^ in_1)));
    assign out_0 = ((((sig_2 | sig_1) & in_5) & sig_0) | in_4);
    assign sig_8 = (~((~(in_5 & (~(in_0 | in_2)))) & in_4));
    assign sig_5 = (~(~(sig_2 | sig_7)));
    assign sig_8 = (~((in_5 & (~(~((~(sig_4 | sig_9)) | sig_7)))) | in_1));

endmodule
