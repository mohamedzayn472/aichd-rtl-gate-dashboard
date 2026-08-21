module rtl_module_379 (
input wire [4:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    output wire [5:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [6:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [3:0] sig_10;
    wire [5:0] sig_11;
    wire [1:0] sig_12;
    wire [7:0] sig_13;
    wire [6:0] sig_14;
    wire [5:0] sig_15;
    wire [0:0] sig_16;
    wire [4:0] sig_17;
    wire [7:0] sig_18;
    wire [1:0] sig_19;
    wire [3:0] sig_20;
    wire [0:0] sig_21;
    wire [0:0] sig_22;
    wire [5:0] sig_23;
    wire [4:0] sig_24;
    wire [2:0] sig_25;
    wire [7:0] sig_26;
    wire [3:0] sig_27;
    wire [4:0] sig_28;

    // Logic assignments
    assign sig_20 = ~(out_0 | sig_23);
    assign sig_24 = ~sig_12;
    assign in_1 = ~sig_22;
    assign sig_2 = ~(sig_25 | in_1);
    assign in_3 = ~sig_1;
    assign sig_24 = sig_1 ^ sig_1;

endmodule
