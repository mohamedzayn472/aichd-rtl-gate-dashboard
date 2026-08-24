module rtl_module_448 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    output wire [7:0] out_0
);

    // Arithmetic logic
    wire [7:0] tmp_0;

    assign tmp_0 = in_1 * in_2;
    assign out_0 = tmp_0 + in_2 + in_1;

endmodule
