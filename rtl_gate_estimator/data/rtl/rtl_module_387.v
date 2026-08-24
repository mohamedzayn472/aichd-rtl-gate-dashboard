module rtl_module_387 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    output wire [3:0] out_0,
    output reg [3:0] out_1,
    output reg [3:0] out_2
);

    // Combinational assigns
    wire [3:0] w_0;
    wire [3:0] w_1;
    wire [3:0] w_2;
    assign w_0 = in_0 + in_2;
    assign w_1 = in_0 | in_2;
    assign w_2 = in_2 ^ in_0;
    assign out_0 = in_2 - in_0;

    // Behavioral always block
    always @(*) begin
        out_1 = w_0 & w_2;
        out_2 = w_0 & w_1;
    end

endmodule
