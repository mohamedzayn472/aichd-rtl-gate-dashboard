module rtl_module_67 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    output wire [3:0] out_0,
    output wire [3:0] out_1,
    output reg [3:0] out_2,
    output reg [3:0] out_3
);

    // Combinational assigns
    wire [3:0] w_0;
    wire [3:0] w_1;
    wire [3:0] w_2;
    wire [3:0] w_3;
    assign w_0 = in_2 | in_1;
    assign w_1 = in_0 | in_2;
    assign w_2 = in_0 + in_2;
    assign w_3 = in_2 ^ in_0;
    assign out_0 = w_1 + w_3;
    assign out_1 = w_0 ^ in_2;

    // Behavioral always block
    always @(*) begin
        out_2 = w_3 + w_1;
        out_3 = w_0 - w_3;
    end

endmodule
