module rtl_module_235 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output reg [7:0] out_2,
    output reg [7:0] out_3
);

    // Combinational assigns
    wire [7:0] w_0;
    assign w_0 = in_0 | in_1;
    assign out_0 = in_0 - w_0;
    assign out_1 = w_0 ^ in_0;

    // Behavioral always block
    always @(*) begin
        out_2 = in_1 | w_0;
        out_3 = in_1 + w_0;
    end

endmodule
