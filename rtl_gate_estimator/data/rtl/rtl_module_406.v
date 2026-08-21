module rtl_module_406 (
input wire [3:0] in_0,
    input wire [2:0] in_1,
    input wire [3:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    output wire [0:0] out_0,
    output wire [2:0] out_1,
    output wire [1:0] out_2,
    output wire [5:0] out_3,
    output wire [5:0] out_4,
    output wire [5:0] out_5,
    output wire [2:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [1:0] sig_4;
    wire [0:0] sig_5;
    wire [5:0] sig_6;
    wire [1:0] sig_7;

    // Logic assignments
    assign out_0 = (~(out_2 | (~out_5)));
    assign out_1 = (~(out_3 & ((out_4 & out_5) & out_3)));
    assign out_2 = ((((out_4 | out_3) & out_6) & sig_2) & in_1);
    assign out_3 = (~((~in_0) & sig_1));
    assign out_4 = (~((~((out_5 | sig_7) & out_1)) & out_3));
    assign out_5 = (~(((~((in_0 ^ (out_0 ^ out_6)) | in_3)) | sig_1) & sig_2));
    assign out_6 = (~(out_2 | (~((~((~(sig_3 | (~(in_2 & (out_2 & (sig_3 ^ sig_7)))))) | sig_1)) | sig_0))));
    assign out_7 = ((in_2 ^ (~((~((~(~((sig_5 & sig_5) & in_3))) & sig_3)) & in_3))) & out_0);
    assign out_3 = (sig_2 | (~(in_2 | in_1)));
    assign sig_6 = (~(((~(sig_1 | (sig_2 | out_0))) ^ out_2) | out_4));
    assign sig_3 = (~((~((sig_7 | sig_4) & out_5)) | out_3));
    assign out_4 = (~((~(sig_4 & sig_7)) & out_4));
    assign out_6 = (~(sig_0 & (~((~(sig_2 & out_7)) & out_0))));
    assign sig_4 = (out_0 | (~((~(in_2 & in_2)) | in_0)));
    assign sig_4 = (out_1 | ((~in_3) & in_2));
    assign sig_6 = (out_1 & (out_2 ^ in_1));
    assign sig_3 = ((~((out_6 & (out_1 | sig_7)) | out_5)) | out_3);
    assign out_0 = (sig_0 ^ (out_4 | sig_2));

endmodule
