
module constant_fold_test (
    input wire a,
    input wire b,
    output wire c,
    output wire d
);
    // Constant folding opportunities
    assign c = 1'b0; // should be 0
    assign d = 1'b1; // should be 1
endmodule
