module rtl_module_197 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [15:0] in_2,
    input wire [15:0] in_3,
    output wire [15:0] out_0,
    output wire [31:0] out_1
);

    // Arithmetic logic
    wire [15:0] tmp_0;

    assign tmp_0 = in_3 * in_2;
    assign out_0 = tmp_0 * in_0;
    assign out_1 = in_0 - in_3;

endmodule
