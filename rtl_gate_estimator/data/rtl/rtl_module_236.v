module rtl_module_236 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [2:0] sel,
    output reg [15:0] out_0,
    output reg [15:0] out_1
);

    always @(*) begin
        if (sel == 3'd0) begin
            out_0 = in_1 + in_0;
            out_1 = in_1 + in_0;
        end
        else if (sel == 3'd1) begin
            out_0 = in_0 & in_1;
            out_1 = in_0 & in_1;
        end
        else if (sel == 3'd2) begin
            out_0 = in_1 + in_0;
            out_1 = in_1 + in_0;
        end
        else begin
            out_0 = 16'b0;
            out_1 = 16'b0;
        end
    end

endmodule
