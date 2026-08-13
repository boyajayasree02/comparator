# 2-Bit Comparator Using Verilog

## Project Overview

A comparator is a combinational logic circuit used to compare two binary numbers.

In this project, a 2-bit magnitude comparator is designed using Verilog HDL.

The comparator compares two 2-bit numbers:

- A = 2-bit input
- B = 2-bit input

It produces three outputs:

- A_gt_B - A is greater than B
- A_eq_B - A is equal to B
- A_lt_B - A is less than B

Only one of these outputs will be HIGH at a time.

---

## Objective

The objectives of this project are:

- To understand the working principle of a digital comparator.
- To design a 2-bit comparator using Verilog HDL.
- To create a Verilog testbench.
- To test all possible input combinations.
- To simulate the comparator.
- To verify the comparison results.

---

## Block Diagram

                 ┌─────────────────────┐
        A[1:0] ─►│                     │───► A_gt_B
                 │    2-Bit            │
        B[1:0] ─►│    Comparator       │───► A_eq_B
                 │                     │
                 │                     │───► A_lt_B
                 └─────────────────────┘

---

## Inputs and Outputs

### Inputs

- `A[1:0]` - First 2-bit binary number
- `B[1:0]` - Second 2-bit binary number

### Outputs

- `A_gt_B` - HIGH when A > B
- `A_eq_B` - HIGH when A = B
- `A_lt_B` - HIGH when A < B

---

## Truth Table

Since A and B are 2-bit numbers, there are 16 possible combinations.

| A | B | A > B | A = B | A < B |
|---|---|-------|-------|-------|
| 00 | 00 | 0 | 1 | 0 |
| 00 | 01 | 0 | 0 | 1 |
| 00 | 10 | 0 | 0 | 1 |
| 00 | 11 | 0 | 0 | 1 |
| 01 | 00 | 1 | 0 | 0 |
| 01 | 01 | 0 | 1 | 0 |
| 01 | 10 | 0 | 0 | 1 |
| 01 | 11 | 0 | 0 | 1 |
| 10 | 00 | 1 | 0 | 0 |
| 10 | 01 | 1 | 0 | 0 |
| 10 | 10 | 0 | 1 | 0 |
| 10 | 11 | 0 | 0 | 1 |
| 11 | 00 | 1 | 0 | 0 |
| 11 | 01 | 1 | 0 | 0 |
| 11 | 10 | 1 | 0 | 0 |
| 11 | 11 | 0 | 1 | 0 |

---

## Working Principle

The comparator compares the two binary numbers.

For example:

```text
A = 10
B = 01