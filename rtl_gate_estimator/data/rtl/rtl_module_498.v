module rtl_module_498 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    output wire [7:0] out_0,
    output reg [7:0] out_1,
    output reg [7:0] out_2
);

    // Combinational assigns
    wire [7:0] w_0;
    wire [7:0] w_1;
    wire [7:0] w_2;
    wire [7:0] w_3;
    assign w_0 = in_3 ^ in_2;
    assign w_1 = in_0 | in_3;
    assign w_2 = in_2 & in_0;
    assign w_3 = in_1 ^ in_0;
    assign out_0 = in_3 | w_2;

    // Behavioral always block
    always @(*) begin
        out_1 = in_0 - in_1;
        out_2 = in_3 & in_1;
    end

endmodule
