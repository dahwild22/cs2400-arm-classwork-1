library	FILL		100
		
main
		cmp		r0, #50
		bgt		return
		adr		r1, library
		ldr		r2, [r1]
		b		L2
		
pointer
		add		r1, r1, r2
		add		r1, r1, #4
		ldr		r2, [r1]
		
L2
		cmp		r2, #0
		bne		pointer
		
		
		str		r0, [r1], #4
		mov		r1, r0
		
free		
		sub		r1, r0, #4
		mov		r0, #0
		str		r0, [r1]
		b		return
		
return
		end
