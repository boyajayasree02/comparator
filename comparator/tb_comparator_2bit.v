`timescale 1ns/1ps

module tb_comparator_2bit;

reg  [1:0] A;
reg  [1:0] B;

wire A_gt_B;
wire A_eq_B;
wire A_lt_B;

// Instantiate comparator
comparator_2bit uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_eq_B(A_eq_B),
    .A_lt_B(A_lt_B)
);

// Generate waveform
initial begin
    $dumpfile("comparator_2bit.vcd");
    $dumpvars(0, tb_comparator_2bit);
end

// Test all possible combinations
initial begin

    $display("Time\tA\tB\tA>B\tA=B\tA<B");

    for (integer i = 0; i < 4; i = i + 1) begin

        for (integer j = 0; j < 4; j = j + 1) begin

            A = i;
            B = j;

            #10;

            $display("%0t\t%b\t%b\t%b\t%b\t%b",
                     $time, A, B,
                     A_gt_B,
                     A_eq_B,
                     A_lt_B);

        end

    end

    $finish;

end

endmodule