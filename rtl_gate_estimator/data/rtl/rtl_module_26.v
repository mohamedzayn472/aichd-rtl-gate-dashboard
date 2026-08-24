module rtl_module_26 (
input wire [31:0] in_0,
    input wire [31:0] in_1,
    output wire [31:0] out_0
);

    // Arithmetic logic
    wire [31:0] tmp_0;
    wire [31:0] tmp_1;
    wire [31:0] tmp_2;

    assign tmp_0 = in_1 - tmp_1;
    assign tmp_1 = tmp_1 + tmp_0;
    assign tmp_2 = tmp_1 + tmp_0;
    assign out_0 = tmp_0 + tmp_2;

endmodule
