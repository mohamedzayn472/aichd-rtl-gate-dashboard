module rtl_module_410 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [7:0] out_2
);

    // Arithmetic logic
    wire [3:0] tmp_0;
    wire [3:0] tmp_1;

    assign tmp_0 = in_0 - in_2;
    assign tmp_1 = tmp_1 + in_3;
    assign out_0 = in_3 - in_2;
    assign out_1 = in_1 * in_2;
    assign out_2 = in_3 - tmp_0;

endmodule
