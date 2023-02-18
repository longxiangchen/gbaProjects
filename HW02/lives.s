	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"lives.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"LIVES:\000"
	.text
	.align	2
	.global	drawLives
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L8
	ldr	r3, .L8+4
	mov	r1, #10
	mov	r0, #0
	ldr	r2, .L8+8
	ldr	r4, .L8+12
	mov	lr, pc
	bx	r4
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L1
	mov	r4, #0
	ldr	r5, .L8+16
	ldr	r8, .L8+20
	ldr	r0, [r5]
	ldr	r7, .L8+4
.L3:
	mov	r2, #88
	mov	r3, r7
	mov	r1, #25
	mov	lr, pc
	bx	r8
	ldr	r0, [r5]
	ldr	r2, [r6]
	add	r4, r4, #1
	add	r0, r0, #5
	cmp	r2, r4
	str	r0, [r5]
	bgt	.L3
.L1:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	lives
	.word	32767
	.word	.LC0
	.word	drawString
	.word	.LANCHOR0
	.word	drawChar
	.size	drawLives, .-drawLives
	.global	liveX
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	liveX, %object
	.size	liveX, 4
liveX:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
