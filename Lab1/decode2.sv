/*
 *  Filename: decode2.sv
 *  Author: Glen Healy
 *  Date: Jan 21, 2025
 *  Course: ELEX 7660 - Digital System Design
 *
 *  Purpose:
 *  This module controls which digit of the 7-segment display is currently active.
 *  It receives a 2-bit `digit` input and generates a 4-bit `ct` output that 
 *  enables one of the four digits on the display.
 *
 *  Description:
 *  - The `ct` output is active LOW, meaning that a '0' enables the digit.
 *  - This module works together with `bcitid` (which provides the number to be displayed)
 *    and `decode7` (which converts the number into a 7-segment pattern).
 *  - The digit enable order is correctly aligned with the physical wiring of the display.
 */

module decode2 (
    input logic [1:0] digit,   // 2-bit input to select the active digit
    output logic [3:0] ct      // 4-bit active low output for digit control
);

    always_comb begin
        case (digit)					// The 'digit' input determines which display digit is active
            2'b00: ct = 4'b0111; // Enable first digit (4)
            2'b01: ct = 4'b1011; // Enable second digit (8)
            2'b10: ct = 4'b1101; // Enable third digit (0)
            2'b11: ct = 4'b1110; // Enable fourth digit (0)
            default: ct = 4'b1111; // All digits off
        endcase
    end
endmodule



