# Assembly Overflow Bug

This repository demonstrates a common error in assembly programming: integer overflow.  The `bug.asm` file contains code that adds two 16-bit registers without checking for potential overflow. This can lead to incorrect results. The `bugSolution.asm` file shows how to mitigate this issue by checking for overflow before the addition.