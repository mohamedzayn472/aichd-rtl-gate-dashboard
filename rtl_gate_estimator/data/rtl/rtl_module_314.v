module rtl_module_314 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    output wire [3:0] out_0,
    output reg [3:0] out_1
);

    // Combinational assigns
    wire [3:0] w_0;
    assign w_0 = in_0 | in_2;
    assign out_0 = in_0 ^ in_3;

    // Behavioral always block
    always @(*) begin
        out_1 = in_3 + in_0;
    end

endmodule
