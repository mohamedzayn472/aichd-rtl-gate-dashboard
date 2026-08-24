module rtl_module_340 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    output wire [3:0] out_0
);

    // Arithmetic logic
    wire [3:0] tmp_0;
    wire [3:0] tmp_1;

    assign tmp_0 = tmp_0 + in_2 + tmp_1;
    assign tmp_1 = in_1 - in_2;
    assign out_0 = in_0 - in_2;

endmodule
