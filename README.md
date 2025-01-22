# x86 Assembly Integer Overflow Bug

This repository demonstrates a subtle integer overflow bug in x86 assembly code that can occur when calculating memory addresses. The bug involves the `mov` instruction and the use of scaled-index addressing mode.  A large value in the `esi` register can lead to incorrect address calculations, resulting in potential crashes or unpredictable program behavior.

The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version with detailed explanations.

**Bug Description:**

The core issue lies in the lack of overflow checks in the address calculation. When `esi` contains a sufficiently large value, the calculation `ebx + esi * 4 + 0x10` can exceed the maximum addressable memory, leading to an integer overflow. This can result in an access violation or other memory-related errors.

**Solution:**

The solution involves adding bounds checking to the address calculation to prevent integer overflow.  The corrected code performs the check before accessing memory, ensuring that the calculated address is within a valid range.