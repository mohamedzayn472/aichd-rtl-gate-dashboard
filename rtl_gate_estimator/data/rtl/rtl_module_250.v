module rtl_module_250 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    output wire [7:0] out_0,
    output wire [7:0] out_1
);

    // Arithmetic logic
    wire [7:0] tmp_0;
    wire [7:0] tmp_1;
    wire [7:0] tmp_2;
    wire [7:0] tmp_3;

    assign tmp_0 = in_3 * in_2;
    assign tmp_1 = in_3 - in_1;
    assign tmp_2 = in_1 * tmp_3;
    assign tmp_3 = in_0 + in_3 + tmp_0;
    assign out_0 = in_3 + in_0 + in_2;
    assign out_1 = tmp_0 - in_0;

endmodule
