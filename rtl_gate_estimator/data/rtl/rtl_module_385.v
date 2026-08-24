module rtl_module_385 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] sel,
    output reg [7:0] out_0
);

    always @(*) begin
        if (sel == 3'd0) begin
            out_0 = in_2 - in_1;
        end
        else if (sel == 3'd1) begin
            out_0 = in_1 + in_0;
        end
        else if (sel == 3'd2) begin
            out_0 = in_1 ^ in_0;
        end
        else if (sel == 3'd3) begin
            out_0 = in_2 & in_1;
        end
        else begin
            out_0 = 8'b0;
        end
    end

endmodule
