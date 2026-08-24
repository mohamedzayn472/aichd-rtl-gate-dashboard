module rtl_module_68 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output reg [7:0] out_2,
    output reg [7:0] out_3
);

    // Combinational assigns
    wire [7:0] w_0;
    wire [7:0] w_1;
    assign w_0 = in_1 + in_0;
    assign w_1 = in_1 & in_0;
    assign out_0 = w_1 | w_0;
    assign out_1 = w_1 + in_0;

    // Behavioral always block
    always @(*) begin
        out_2 = in_0 - in_1;
        out_3 = in_0 - w_0;
    end

endmodule
