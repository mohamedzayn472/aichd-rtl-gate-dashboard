module rtl_module_400 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    output wire [7:0] out_0,
    output reg [7:0] out_1,
    output reg [7:0] out_2
);

    // Combinational assigns
    wire [7:0] w_0;
    wire [7:0] w_1;
    assign w_0 = in_1 + in_0;
    assign w_1 = in_1 ^ in_0;
    assign out_0 = in_0 | w_1;

    // Behavioral always block
    always @(*) begin
        out_1 = w_1 + in_0;
        out_2 = w_1 | w_0;
    end

endmodule
