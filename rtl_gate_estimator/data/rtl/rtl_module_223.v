module rtl_module_223 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    output wire [15:0] out_0,
    output wire [31:0] out_1
);

    // Arithmetic logic
    wire [15:0] tmp_0;
    wire [15:0] tmp_1;

    assign tmp_0 = tmp_1 + tmp_0;
    assign tmp_1 = tmp_1 + in_1;
    assign out_0 = tmp_1 - in_1;
    assign out_1 = tmp_1 - tmp_0;

endmodule
