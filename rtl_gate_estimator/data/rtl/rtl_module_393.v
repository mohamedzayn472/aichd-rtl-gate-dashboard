module rtl_module_393 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    output wire [3:0] out_0,
    output wire [7:0] out_1,
    output wire [4:0] out_2
);

    // Arithmetic logic
    wire [3:0] tmp_0;

    assign tmp_0 = tmp_0 + in_1;
    assign out_0 = in_1 - in_0;
    assign out_1 = tmp_0 * in_0;
    assign out_2 = tmp_0 * in_0;

endmodule
