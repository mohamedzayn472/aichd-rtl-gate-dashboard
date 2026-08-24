module rtl_module_101 (
input wire [31:0] in_0,
    input wire [31:0] in_1,
    output wire [31:0] out_0,
    output wire [32:0] out_1,
    output wire [32:0] out_2
);

    // Arithmetic logic
    wire [31:0] tmp_0;

    assign tmp_0 = in_0 - tmp_0;
    assign out_0 = tmp_0 - in_0;
    assign out_1 = in_1 - tmp_0;
    assign out_2 = tmp_0 * in_1;

endmodule
