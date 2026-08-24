module rtl_module_89 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [0:0] sel,
    output reg [15:0] out_0,
    output reg [15:0] out_1
);

    always @(*) begin
        if (sel == 1'd0) begin
            out_0 = in_0 & in_1;
            out_1 = in_0 & in_1;
        end
        else if (sel == 1'd1) begin
            out_0 = in_0 | in_1;
            out_1 = in_0 | in_1;
        end
        else begin
            out_0 = 16'b0;
            out_1 = 16'b0;
        end
    end

endmodule
