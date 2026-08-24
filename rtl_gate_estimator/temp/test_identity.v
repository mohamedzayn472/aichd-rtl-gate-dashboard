
module identity_test (
    input wire [3:0] x,
    output wire [3:0] y,
    output wire [3:0] z
);
    // Identity operations
    assign y = x ^ x; // should be 0
    assign z = x + 0; // should be x
endmodule
