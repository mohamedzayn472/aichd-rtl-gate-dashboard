module rtl_module_335 (
input wire [31:0] in_0,
    input wire [31:0] in_1,
    input wire [31:0] in_2,
    output wire [31:0] out_0,
    output wire [63:0] out_1
);

    // Arithmetic logic
    wire [31:0] tmp_0;
    wire [31:0] tmp_1;
    wire [31:0] tmp_2;
    wire [31:0] tmp_3;

    assign tmp_0 = tmp_0 * tmp_1;
    assign tmp_1 = tmp_2 + tmp_0;
    assign tmp_2 = in_1 * tmp_3;
    assign tmp_3 = in_0 + tmp_1;
    assign out_0 = in_0 + tmp_3 + tmp_0;
    assign out_1 = tmp_1 + tmp_0;

endmodule
