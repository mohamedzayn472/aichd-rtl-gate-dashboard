module rtl_module_349 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    output wire [3:0] out_0,
    output reg [3:0] out_1
);

    // Combinational assigns
    wire [3:0] w_0;
    wire [3:0] w_1;
    assign w_0 = in_0 & in_1;
    assign w_1 = in_2 ^ in_1;
    assign out_0 = in_0 & w_1;

    // Behavioral always block
    always @(*) begin
        out_1 = in_0 + in_2;
    end

endmodule
