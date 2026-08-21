module rtl_module_164 (
input wire [3:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    output wire [3:0] out_0,
    output wire [3:0] out_1,
    output wire [1:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;

    // Logic assignments
    assign out_0 = (~((~((~((((~((~(in_0 | in_2)) | out_0)) & out_2) ^ in_0) ^ out_1)) | sig_1)) & out_1));
    assign out_1 = (~((~((~((~(out_0 & sig_0)) | out_3)) & out_3)) & in_0));
    assign out_2 = ((((~out_0) | in_2) ^ sig_2) | out_0);
    assign out_3 = (~(sig_2 ^ (out_2 | (~((~(sig_2 | (~(out_3 | out_3)))) & sig_1)))));
    assign sig_2 = ((~(~((~((sig_0 ^ in_1) | out_2)) | in_0))) ^ in_1);
    assign sig_1 = (~((~(~((~((~(sig_2 | in_2)) | out_1)) | in_2))) | sig_0));
    assign out_1 = ((~(sig_1 & (in_0 | (~(in_1 & (out_0 & out_0)))))) ^ out_0);
    assign out_2 = (~((~sig_0) | in_2));

endmodule
