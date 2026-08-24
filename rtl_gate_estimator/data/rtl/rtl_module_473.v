module rtl_module_473 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    output wire [3:0] out_0,
    output wire [3:0] out_1,
    output reg [3:0] out_2,
    output reg [3:0] out_3
);

    // Combinational assigns
    wire [3:0] w_0;
    assign w_0 = in_0 | in_1;
    assign out_0 = in_1 ^ w_0;
    assign out_1 = in_0 ^ in_1;

    // Behavioral always block
    always @(*) begin
        out_2 = in_1 - w_0;
        out_3 = in_1 - w_0;
    end

endmodule
