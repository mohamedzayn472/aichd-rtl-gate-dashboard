module rtl_module_215 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    output wire [7:0] out_0,
    output wire [8:0] out_1
);

    // Arithmetic logic
    wire [7:0] tmp_0;
    wire [7:0] tmp_1;

    assign tmp_0 = tmp_1 - in_0;
    assign tmp_1 = in_1 * in_0;
    assign out_0 = tmp_1 - in_1;
    assign out_1 = in_0 * in_1;

endmodule
