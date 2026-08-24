
module identity_test (
    input wire [3:0] x,
    output wire [3:0] y,
    output wire [3:0] z
);
    // Identity operations
    assign y = 1'b0; // should be 0
    assign z = x; // should be x
endmodule
