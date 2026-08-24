module rtl_module_332 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    output wire [7:0] out_0,
    output reg [7:0] out_1,
    output reg [7:0] out_2
);

    // Combinational assigns
    wire [7:0] w_0;
    assign w_0 = in_1 & in_0;
    assign out_0 = in_2 - in_1;

    // Behavioral always block
    always @(*) begin
        out_1 = in_2 | in_1;
        out_2 = in_0 | in_2;
    end

endmodule
