module rtl_module_225 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [2:0] sel,
    output reg [15:0] out_0
);

    always @(*) begin
        if (sel == 3'd0) begin
            out_0 = in_0 ^ in_1;
        end
        else if (sel == 3'd1) begin
            out_0 = in_0 | in_1;
        end
        else if (sel == 3'd2) begin
            out_0 = in_0 & in_1;
        end
        else if (sel == 3'd3) begin
            out_0 = in_0 + in_1;
        end
        else if (sel == 3'd4) begin
            out_0 = in_1 + in_0;
        end
        else if (sel == 3'd5) begin
            out_0 = in_0 ^ in_1;
        end
        else if (sel == 3'd6) begin
            out_0 = in_1 ^ in_0;
        end
        else if (sel == 3'd7) begin
            out_0 = in_0 - in_1;
        end
        else begin
            out_0 = 16'b0;
        end
    end

endmodule
