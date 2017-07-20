;
;  hellokfest.s
;  Git sample application
;
;  Created by Quinn Dunki on 7/9/17
;


.org $6000

main:
	ldy #0

loop:
	lda	string,y
	beq	done
	ora #$80
	jsr $fded
	iny
	jmp	loop

done:
	rts

string:
	.byte "Hello KFest!",0


; Suppress some linker warnings - Must be the last thing in the file
; This is because Quinn doesn't really know how to use ca65 properly
.SEGMENT "ZPSAVE"
.SEGMENT "EXEHDR"
.SEGMENT "STARTUP"
.SEGMENT "INIT"
.SEGMENT "LOWCODE"
