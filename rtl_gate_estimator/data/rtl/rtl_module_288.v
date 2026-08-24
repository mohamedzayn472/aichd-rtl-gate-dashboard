module rtl_module_288 (
input wire [31:0] in_0,
    input wire [31:0] in_1,
    input wire [31:0] in_2,
    output wire [31:0] out_0,
    output wire [63:0] out_1,
    output wire [31:0] out_2
);

    // Arithmetic logic
    wire [31:0] tmp_0;
    wire [31:0] tmp_1;

    assign tmp_0 = in_2 + in_1;
    assign tmp_1 = in_1 + in_0;
    assign out_0 = in_2 - tmp_1;
    assign out_1 = tmp_1 * in_2;
    assign out_2 = tmp_0 + in_2;

endmodule
