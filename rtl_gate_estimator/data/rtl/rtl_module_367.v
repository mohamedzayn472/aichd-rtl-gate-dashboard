module rtl_module_367 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [15:0] in_2,
    output wire [15:0] out_0
);

    // Arithmetic logic
    wire [15:0] tmp_0;
    wire [15:0] tmp_1;
    wire [15:0] tmp_2;
    wire [15:0] tmp_3;

    assign tmp_0 = in_2 + in_0 + tmp_2;
    assign tmp_1 = in_0 - tmp_3;
    assign tmp_2 = tmp_3 * tmp_0;
    assign tmp_3 = tmp_3 - in_0;
    assign out_0 = tmp_2 * tmp_1;

endmodule
