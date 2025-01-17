```assembly
mov ax, 1000h ; Move a large value into AX
add ax, bx     ; Add BX to AX
```
This code might cause an overflow if the sum of AX and BX exceeds the maximum value that can be held in a 16-bit register (FFFFh).  The result would wrap around to a smaller value, leading to unexpected behavior.