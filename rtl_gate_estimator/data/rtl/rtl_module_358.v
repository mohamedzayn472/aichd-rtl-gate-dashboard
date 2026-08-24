module rtl_module_358 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    input wire [2:0] sel,
    output reg [7:0] out_0,
    output reg [7:0] out_1
);

    always @(*) begin
        if (sel == 3'd0) begin
            out_0 = in_0 ^ in_2;
            out_1 = in_0 ^ in_2;
        end
        else if (sel == 3'd1) begin
            out_0 = in_3 ^ in_2;
            out_1 = in_3 ^ in_2;
        end
        else begin
            out_0 = 8'b0;
            out_1 = 8'b0;
        end
    end

endmodule
