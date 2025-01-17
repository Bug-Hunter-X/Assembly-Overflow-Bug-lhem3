```assembly
mov ax, 1000h ; Move a large value into AX
cmp bx, 0FFFFh - ax ; Check for potential overflow
jl add_safe        ; Jump to addition if no overflow
jmp overflow_handler ; Jump to overflow handler

add_safe:
add ax, bx     ; Add BX to AX
jmp end

overflow_handler:
; Handle overflow condition
; ... (e.g., set an error flag, use a larger register)

end:
; ... rest of the code
```
This solution checks if adding `bx` to `ax` will result in an overflow before the addition takes place. If the overflow condition is met, it jumps to `overflow_handler`. If not, the code proceeds to add the values safely.  This prevents the unexpected wrap-around behavior.