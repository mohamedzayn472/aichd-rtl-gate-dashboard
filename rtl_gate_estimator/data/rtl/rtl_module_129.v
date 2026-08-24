module rtl_module_129 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] sel,
    output reg [7:0] out_0
);

    always @(*) begin
        if (sel == 1'd0) begin
            out_0 = in_0 - in_1;
        end
        else if (sel == 1'd1) begin
            out_0 = in_0 | in_1;
        end
        else begin
            out_0 = 8'b0;
        end
    end

endmodule
