module rtl_module_219 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [15:0] in_2,
    output wire [15:0] out_0,
    output wire [15:0] out_1
);

    // Arithmetic logic
    wire [15:0] tmp_0;
    wire [15:0] tmp_1;
    wire [15:0] tmp_2;

    assign tmp_0 = tmp_0 * in_0;
    assign tmp_1 = tmp_2 * in_0;
    assign tmp_2 = in_1 * in_2;
    assign out_0 = in_0 + tmp_0;
    assign out_1 = in_2 - tmp_2;

endmodule
