module rtl_module_108 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    output wire [3:0] out_0,
    output reg [3:0] out_1
);

    // Combinational assigns
    wire [3:0] w_0;
    assign w_0 = in_1 ^ in_0;
    assign out_0 = in_0 | w_0;

    // Behavioral always block
    always @(*) begin
        out_1 = w_0 + in_1;
    end

endmodule
