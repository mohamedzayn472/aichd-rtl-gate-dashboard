module rtl_module_464 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    output wire [7:0] out_0
);

    // Arithmetic logic
    wire [7:0] tmp_0;

    assign tmp_0 = in_2 - in_1;
    assign out_0 = in_3 * tmp_0;

endmodule
