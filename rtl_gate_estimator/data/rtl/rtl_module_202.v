module rtl_module_202 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [0:0] sel,
    output reg [3:0] out_0
);

    always @(*) begin
        if (sel == 1'd0) begin
            out_0 = in_1 ^ in_2;
        end
        else if (sel == 1'd1) begin
            out_0 = in_1 ^ in_0;
        end
        else begin
            out_0 = 4'b0;
        end
    end

endmodule
