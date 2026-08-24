module rtl_module_160 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    output wire [7:0] out_0
);

    // Arithmetic logic
    wire [7:0] tmp_0;
    wire [7:0] tmp_1;
    wire [7:0] tmp_2;

    assign tmp_0 = tmp_0 - tmp_1;
    assign tmp_1 = tmp_2 - in_1;
    assign tmp_2 = in_0 + in_3;
    assign out_0 = tmp_2 - in_1;

endmodule
