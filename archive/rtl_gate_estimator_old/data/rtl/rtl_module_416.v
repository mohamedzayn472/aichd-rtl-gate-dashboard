module rtl_module_416 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [2:0] in_4,
    input wire [4:0] in_5,
    input wire [7:0] in_6,
    input wire [6:0] in_7,
    output wire [3:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [4:0] sig_5;
    wire [1:0] sig_6;
    wire [3:0] sig_7;

    // Logic assignments
    assign in_3 = out_1 & in_3;
    assign in_0 = sig_2 ^ in_2;
    assign in_7 = ~(in_5 | sig_2);
    assign in_3 = ~(sig_6 | in_0);
    assign sig_1 = sig_6 ^ in_1;
    assign sig_3 = ~(sig_5 & in_0);
    assign sig_0 = ~(in_1 & sig_4);
    assign in_3 = ~sig_1;
    assign out_0 = ~(sig_6 | out_0);
    assign in_2 = in_0 | in_6;
    assign sig_0 = sig_3 & sig_4;
    assign sig_2 = sig_7 ^ in_4;

endmodule
