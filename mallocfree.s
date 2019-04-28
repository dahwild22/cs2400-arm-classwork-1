start
		bne		malloc ;starts malloc
		
		b		free
		
malloc
		adr		r11, heap ;makes pointer for top of heap
		bl		getSize
		str		r12,[r11]	;creates metadata that holds size
		add		r11,r11,#4 ;adjusts pointer(for available spaces)
		movs		r0,#0
		b		start
		
return
		moveq	r11, #0
		end
		
free
		mov		r12,#0
		str		r12,[r11,#-4]
		b		return
		
getSize
		mov		r12, #0
		add		r12,r12,#250 ;gets region size
		cmp		r12,#500
		bpl		return
		mov		pc,lr
		
heap		fill		5000
