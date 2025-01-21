/*
 *  Filename: bcitid.sv
 *  Author: Glen Healy
 *  Date: Jan 21, 2025
 *  Course: ELEX 7660 - Digital System Design
 *
 *  Purpose:
 *  This module stores and outputs the last four digits of a BCIT student ID.
 *  It takes a 2-bit `digit` input, representing the currently active display digit,
 *  and outputs a 4-bit `idnum` signal corresponding to the correct digit.
 *
 *  Description:
 *  - This module is responsible for providing the numerical values (4800) to be
 *    displayed on the 7-segment display.
 *  - It works in conjunction with the `decode2` module, which enables the correct
 *    digit, and the `decode7` module, which converts the number to a 7-segment pattern.
 */

module bcitid (
    input logic [1:0] digit,  // 2-bit input
    output logic [3:0] idnum // 4-bit output
);

    always_comb begin
        case (digit)
            2'b00: idnum = 4'd4; // First digit (4)
            2'b01: idnum = 4'd8; // Second digit (8)
            2'b10: idnum = 4'd0; // Third digit (0)
            2'b11: idnum = 4'd0; // Fourth digit (0)
            default: idnum = 4'd0;
        endcase

    end
endmodule
