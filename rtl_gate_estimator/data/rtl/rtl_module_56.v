module rtl_module_56 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    output wire [0:0] out_0,
    output wire [0:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [6:0] out_4,
    output wire [3:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;

    // Logic assignments
    assign out_0 = (~(out_6 | (~(sig_5 | (sig_6 | ((~(sig_4 & out_6)) & in_1))))));
    assign out_1 = ((out_3 | (out_6 ^ out_6)) ^ out_6);
    assign out_2 = (((~out_5) ^ out_1) & out_4);
    assign out_3 = (sig_6 ^ (~((out_6 & (out_6 ^ (~(sig_2 | out_3)))) | sig_5)));
    assign out_4 = (~((~((((~(sig_6 | ((~out_3) ^ out_5))) ^ sig_6) ^ sig_5) & in_1)) & out_4));
    assign out_5 = (~(in_0 & (in_0 | (~(sig_1 | out_1)))));
    assign out_6 = (~((sig_0 ^ out_2) | sig_4));
    assign sig_3 = (~((~(~(out_0 | sig_5))) & out_2));
    assign sig_3 = (~(out_3 | (sig_1 | ((((~(out_3 & sig_1)) & in_1) & out_0) & sig_5))));

endmodule
