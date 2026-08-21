module rtl_module_416 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    output wire [4:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [6:0] sig_0;
    wire [5:0] sig_1;
    wire [0:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [7:0] sig_6;
    wire [2:0] sig_7;

    // Logic assignments
    assign out_0 = (~((~(in_1 & (sig_5 & (~((~(~(sig_0 & sig_5))) & sig_6))))) ^ sig_2));
    assign out_1 = (~((~(sig_2 | (~(sig_5 ^ (out_2 | (~(in_1 ^ out_0))))))) | sig_0));
    assign out_2 = (~(sig_6 | (~(in_1 & sig_4))));
    assign out_0 = (sig_1 & ((~((~(~sig_2)) & out_0)) & sig_5));
    assign sig_6 = (~(sig_4 | (~(~(sig_5 & in_0)))));

endmodule
