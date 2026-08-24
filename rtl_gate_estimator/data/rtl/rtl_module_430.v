module rtl_module_430 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    input wire [1:0] sel,
    output reg [3:0] out_0
);

    always @(*) begin
        if (sel == 2'd0) begin
            out_0 = in_2 + in_3;
        end
        else if (sel == 2'd1) begin
            out_0 = in_0 ^ in_2;
        end
        else if (sel == 2'd2) begin
            out_0 = in_0 | in_2;
        end
        else if (sel == 2'd3) begin
            out_0 = in_0 ^ in_2;
        end
        else begin
            out_0 = 4'b0;
        end
    end

endmodule
