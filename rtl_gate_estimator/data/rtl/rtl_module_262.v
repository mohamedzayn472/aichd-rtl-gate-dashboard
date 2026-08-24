module rtl_module_262 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    output wire [15:0] out_0,
    output wire [31:0] out_1,
    output wire [16:0] out_2
);

    // Arithmetic logic
    wire [15:0] tmp_0;
    wire [15:0] tmp_1;
    wire [15:0] tmp_2;
    wire [15:0] tmp_3;

    assign tmp_0 = in_0 * tmp_3;
    assign tmp_1 = tmp_0 + in_1;
    assign tmp_2 = tmp_0 - in_0;
    assign tmp_3 = tmp_3 * tmp_2;
    assign out_0 = tmp_0 + tmp_2;
    assign out_1 = tmp_0 + tmp_3;
    assign out_2 = tmp_3 * in_0;

endmodule
