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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	mov	r3, #0
	mov	ip, #30
	push	{r4, lr}
	ldr	r0, .L4
	ldr	r2, .L4+4
	strh	r0, [r1]	@ movhi
	ldr	lr, .L4+8
	ldr	r1, .L4+12
	strh	r3, [r2]	@ movhi
	ldr	r0, .L4+16
	ldr	r2, .L4+20
	strh	r3, [lr]	@ movhi
	str	ip, [r1]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	oldButtons
	.word	buttons
	.word	frameLim
	.word	32767
	.word	fillScreen
	.size	initialize, .-initialize
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"next frame\000"
	.align	2
.LC1:
	.ascii	"previous frame\000"
	.align	2
.LC2:
	.ascii	"STARTED\000"
	.text
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #1
	sub	sp, sp, #8
	bne	.L7
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L42
.L7:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #2
	bne	.L9
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L43
.L9:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L11
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L44
.L11:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L12
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #32
	bne	.L45
.L12:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #4
	bne	.L13
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldrne	r2, .L48+8
	ldrbne	r3, [r2]	@ zero_extendqisi2
	eorne	r3, r3, #1
	strbne	r3, [r2]
.L13:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bne	.L14
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L46
.L14:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L15
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L47
.L15:
	ldr	r3, .L48
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L6
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L6
	ldr	r2, .L48+12
	ldr	r3, [r2]
	cmp	r3, #59
	addle	r3, r3, #5
	strle	r3, [r2]
.L6:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L47:
	ldr	r2, .L48+12
	ldr	r3, [r2]
	cmp	r3, #10
	subgt	r3, r3, #5
	strgt	r3, [r2]
	b	.L15
.L46:
	ldr	r3, .L48+16
	ldr	r0, .L48+20
	mov	lr, pc
	bx	r3
	ldr	r2, .L48+24
	ldrb	r3, [r2]	@ zero_extendqisi2
	eor	r3, r3, #1
	strb	r3, [r2]
	b	.L14
.L42:
	ldr	r2, .L48+28
	ldr	r3, .L48+32
	ldr	r1, .L48+36
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #100
	str	r3, [sp]
	ldr	r4, .L48+40
	mov	r3, #50
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+16
	ldr	r0, .L48+44
	mov	lr, pc
	bx	r3
	ldr	r2, .L48+48
	ldr	r3, [r2]
	cmp	r3, #9
	moveq	r3, #1
	addne	r3, r3, #1
	str	r3, [r2]
	b	.L7
.L43:
	ldr	r2, .L48+28
	ldr	r3, .L48+32
	ldr	r1, .L48+36
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #100
	str	r3, [sp]
	ldr	r4, .L48+40
	mov	r3, #50
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+16
	ldr	r0, .L48+52
	mov	lr, pc
	bx	r3
	ldr	r2, .L48+48
	ldr	r3, [r2]
	cmp	r3, #1
	moveq	r3, #9
	subne	r3, r3, #1
	str	r3, [r2]
	b	.L9
.L44:
	ldr	r2, .L48+28
	ldr	r3, .L48+32
	ldr	r1, .L48+36
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #100
	str	r3, [sp]
	ldr	r4, .L48+40
	mov	r3, #50
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L48+48
	str	r2, [r3]
	b	.L11
.L45:
	ldr	r2, .L48+28
	ldr	r3, .L48+32
	ldr	r1, .L48+36
	ldr	r0, [r2]
	ldr	r1, [r1]
	mov	r2, #100
	str	r3, [sp]
	ldr	r4, .L48+40
	mov	r3, #50
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L48+48
	str	r2, [r3]
	b	.L12
.L49:
	.align	2
.L48:
	.word	67109120
	.word	oldButtons
	.word	.LANCHOR0
	.word	frameLim
	.word	mgba_printf
	.word	.LC2
	.word	.LANCHOR1
	.word	x
	.word	32767
	.word	y
	.word	drawRect
	.word	.LC0
	.word	dFrame
	.word	.LC1
	.size	update, .-update
	.align	2
	.global	drawExclamation
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawExclamation, %function
drawExclamation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	sub	sp, sp, #12
	add	r8, r0, #12
	ldr	r4, .L52
	mov	r6, r0
	mov	r7, r1
	mov	r0, r8
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #6
	add	r1, r1, #4
	mov	lr, pc
	bx	r4
	mov	r3, #1
	add	fp, r6, #11
	add	r9, r7, #5
	add	r10, r7, #6
	mov	r0, fp
	mov	r1, r9
	mov	r2, r3
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r10
	str	r5, [sp]
	add	r0, r6, #10
	mov	r3, #4
	mov	r2, #1
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, r9
	mov	r2, r3
	str	r5, [sp]
	add	r0, r6, #18
	mov	lr, pc
	bx	r4
	mov	r1, r10
	str	r5, [sp]
	add	r0, r6, #19
	mov	r3, #4
	mov	r2, #1
	mov	lr, pc
	bx	r4
	mov	r3, #1
	add	r10, r7, #10
	mov	r0, fp
	mov	r1, r10
	mov	r2, r3
	str	r5, [sp]
	add	fp, r7, #11
	mov	lr, pc
	bx	r4
	mov	r0, r8
	mov	r1, fp
	str	r5, [sp]
	mov	r3, #1
	mov	r2, #2
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r5, [sp]
	mov	r2, r3
	add	r1, r7, #12
	add	r0, r6, #13
	mov	lr, pc
	bx	r4
	mov	r3, #1
	add	r8, r6, #14
	mov	r1, fp
	mov	r0, r8
	mov	r2, r3
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, r10
	str	r5, [sp]
	add	r0, r6, #15
	mov	r3, #1
	mov	r2, #4
	mov	lr, pc
	bx	r4
	mov	r3, #31
	mov	r1, r9
	mov	r0, r8
	mov	r5, r3
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #2
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, r8
	mov	r2, r3
	str	r5, [sp]
	add	r1, r7, #8
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	drawRect
	.size	drawExclamation, .-drawExclamation
	.align	2
	.global	drawDiglett
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDiglett, %function
drawDiglett:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #3
	sub	sp, sp, #12
	add	r7, r0, #4
	add	r8, r1, #17
	beq	.L66
	cmp	r2, #4
	mov	r10, r2
	mov	r5, r0
	mov	r4, r1
	beq	.L67
	cmp	r2, #5
	beq	.L68
	cmp	r2, #6
	beq	.L69
	cmp	r2, #7
	beq	.L70
	cmp	r2, #8
	beq	.L71
	cmp	r2, #9
	beq	.L63
	ldr	r6, .L72
.L56:
	ldr	r3, .L72+4
	mov	r1, r8
	str	r3, [sp]
	mov	r0, r7
	mov	r3, #2
	mov	r2, #24
	mov	lr, pc
	bx	r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L66:
	bl	drawExclamation
	ldr	r6, .L72
	b	.L56
.L69:
	ldr	fp, .L72+8
	sub	r1, r1, #7
	bl	drawExclamation
	ldr	r6, .L72
	mov	r2, r10
	add	r1, r4, #9
	add	r0, r5, #13
	mov	r3, #1
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r4, #10
	add	r0, r5, #11
	mov	r3, #1
	mov	r2, #9
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r4, #11
	add	r0, r5, #10
	mov	r3, #1
	mov	r2, #12
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	add	r9, r4, #13
	add	r1, r4, #12
	add	r0, r5, #9
	mov	r3, #1
	mov	r2, #14
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, r10
	add	r0, r5, #8
	mov	r1, r9
	mov	r2, #16
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldr	fp, .L72+12
	add	r10, r5, #15
	mov	r2, r3
	mov	r1, r9
	mov	r0, r10
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #1
	add	r5, r5, #12
	add	r4, r4, #14
.L65:
	mov	r1, r9
	mov	r0, r5
	mov	r2, r3
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #0
	mov	r9, r3
	mov	r0, r10
	mov	r1, r4
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #2
	mov	lr, pc
	bx	r6
	mov	r1, r4
	mov	r0, r5
	mov	r3, #2
	mov	r2, #1
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	b	.L56
.L67:
	ldr	r9, .L72+8
	sub	r1, r1, #3
	bl	drawExclamation
	ldr	r6, .L72
	add	r1, r4, #15
	add	r0, r5, #13
	mov	r3, #1
	mov	r2, #6
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #1
	mov	r2, #9
	str	r9, [sp]
	add	r1, r4, #16
	add	r0, r5, #11
	mov	lr, pc
	bx	r6
	b	.L56
.L68:
	ldr	r9, .L72+8
	sub	r1, r1, #5
	bl	drawExclamation
	ldr	r6, .L72
	add	r1, r4, #13
	add	r0, r5, #13
	mov	r3, #1
	mov	r2, #6
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	add	r10, r5, #9
	add	r1, r4, #14
	add	r0, r5, #11
	add	fp, r4, #15
	mov	r3, #1
	mov	r2, #9
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	mov	r0, r10
	mov	r1, fp
	mov	r3, #1
	mov	r2, #14
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	mov	r1, fp
	mov	r0, r10
	mov	r3, #1
	mov	r2, #13
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #1
	mov	r2, #16
	str	r9, [sp]
	add	r1, r4, #16
	add	r0, r5, #8
	mov	lr, pc
	bx	r6
	b	.L56
.L70:
	ldr	r10, .L72+8
	sub	r1, r1, #8
	bl	drawExclamation
	ldr	r6, .L72
	add	r1, r4, #7
	add	r0, r5, #13
	mov	r3, #1
	mov	r2, #6
	str	r10, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r4, #8
	add	r0, r5, #11
	mov	r3, #1
	mov	r2, #9
	str	r10, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r4, #9
	add	r0, r5, #10
	mov	r3, #1
	mov	r2, #12
	str	r10, [sp]
	mov	lr, pc
	bx	r6
	add	r1, r4, #10
	add	r0, r5, #9
	mov	r3, #1
	mov	r2, #14
	str	r10, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #8
	add	r9, r4, #11
	add	r0, r5, r3
	mov	r1, r9
	mov	r2, #16
	str	r10, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldr	fp, .L72+12
	add	r10, r5, #15
	mov	r2, r3
	mov	r1, r9
	mov	r0, r10
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	add	r5, r5, #12
	mov	r3, #1
	add	r4, r4, #12
	b	.L65
.L71:
	ldr	fp, .L72+8
	sub	r1, r1, #10
	ldr	r6, .L72
	bl	drawExclamation
	str	fp, [sp]
	add	r1, r4, #4
	add	r0, r5, #13
	mov	r3, #1
	mov	r2, #6
	mov	lr, pc
	bx	r6
	add	r10, r5, #10
	str	fp, [sp]
	add	r1, r4, #5
	add	r0, r5, #11
	mov	r3, #1
	mov	r2, #9
	mov	lr, pc
	bx	r6
	mov	r0, r10
	str	fp, [sp]
	add	r1, r4, #6
	mov	r3, #1
	mov	r2, #12
	mov	lr, pc
	bx	r6
	add	r9, r4, #8
	str	fp, [sp]
	add	r1, r4, #7
	add	r0, r5, #9
	mov	r3, #1
	mov	r2, #14
	mov	lr, pc
	bx	r6
	mov	r1, r9
	str	fp, [sp]
	add	r0, r5, #8
	mov	r3, #11
	mov	r2, #16
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldr	r0, .L72+12
	add	fp, r5, #15
	mov	r1, r9
	mov	r2, r3
	str	r0, [sp]
	mov	r0, fp
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldr	r0, .L72+12
	add	r5, r5, #12
	mov	r1, r9
	mov	r2, r3
	str	r0, [sp]
	mov	r0, r5
	mov	lr, pc
	bx	r6
	mov	r3, #0
	mov	r0, fp
	mov	fp, r3
	add	r9, r4, #9
	mov	r1, r9
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #2
	mov	lr, pc
	bx	r6
	mov	r1, r9
	mov	r0, r5
	mov	r3, #2
	mov	r2, #1
	str	fp, [sp]
	mov	lr, pc
	bx	r6
	ldr	r3, .L72+16
	mov	r0, r10
	str	r3, [sp]
	mov	r2, #6
	mov	r3, #3
	add	r1, r4, #14
	mov	lr, pc
	bx	r6
	b	.L56
.L63:
	ldr	r9, .L72+8
	sub	r1, r1, #16
	ldr	r6, .L72
	bl	drawExclamation
	mov	r1, r4
	str	r9, [sp]
	add	r0, r5, #13
	mov	r3, #1
	mov	r2, #6
	mov	lr, pc
	bx	r6
	mov	r3, #1
	add	fp, r5, #10
	add	r1, r4, r3
	mov	r2, r10
	str	r9, [sp]
	add	r0, r5, #11
	mov	lr, pc
	bx	r6
	mov	r0, fp
	str	r9, [sp]
	add	r1, r4, #2
	mov	r3, #1
	mov	r2, #12
	mov	lr, pc
	bx	r6
	add	r10, r4, #4
	str	r9, [sp]
	add	r1, r4, #3
	add	r0, r5, #9
	mov	r3, #1
	mov	r2, #14
	mov	lr, pc
	bx	r6
	mov	r1, r10
	str	r9, [sp]
	add	r0, r5, #8
	mov	r3, #15
	mov	r2, #16
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldr	r0, .L72+12
	add	r9, r5, #15
	mov	r1, r10
	mov	r2, r3
	str	r0, [sp]
	mov	r0, r9
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldr	r0, .L72+12
	add	r5, r5, #12
	mov	r1, r10
	mov	r2, r3
	str	r0, [sp]
	mov	r0, r5
	mov	lr, pc
	bx	r6
	mov	r3, #0
	mov	r0, r9
	mov	r9, r3
	add	r10, r4, #5
	mov	r1, r10
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #2
	mov	lr, pc
	bx	r6
	mov	r1, r10
	mov	r0, r5
	mov	r3, #2
	mov	r2, #1
	str	r9, [sp]
	mov	lr, pc
	bx	r6
	ldr	r3, .L72+16
	mov	r0, fp
	str	r3, [sp]
	add	r1, r4, #10
	mov	r3, #3
	mov	r2, #6
	mov	lr, pc
	bx	r6
	ldr	r2, .L72+4
	mov	r3, #2
	str	r2, [sp]
	mov	r1, r8
	mov	r2, #24
	mov	r0, r7
	mov	lr, pc
	bx	r6
	b	.L56
.L73:
	.align	2
.L72:
	.word	drawRect
	.word	15855
	.word	4533
	.word	32767
	.word	11612
	.size	drawDiglett, .-drawDiglett
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #90
	push	{r4, lr}
	mov	r0, r1
	mov	r2, #1
	bl	drawDiglett
	mov	r2, #2
	mov	r1, #90
	mov	r0, #120
	bl	drawDiglett
	mov	r2, #3
	mov	r1, #90
	mov	r0, #150
	bl	drawDiglett
	mov	r2, #4
	mov	r1, #90
	mov	r0, #180
	bl	drawDiglett
	mov	r2, #5
	mov	r1, #140
	mov	r0, #90
	bl	drawDiglett
	mov	r2, #6
	mov	r1, #140
	mov	r0, #120
	bl	drawDiglett
	mov	r2, #8
	mov	r1, #140
	mov	r0, #150
	bl	drawDiglett
	mov	r1, #30
	ldr	r3, .L76
	mov	r0, r1
	ldr	r2, [r3]
	pop	{r4, lr}
	b	drawDiglett
.L77:
	.align	2
.L76:
	.word	dFrame
	.size	draw, .-draw
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"Debugging\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, fp, lr}
	ldr	r3, .L91
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r0, .L91+4
	ldr	r3, .L91+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #0
	mov	r1, #30
	ldr	r0, .L91+12
	ldr	r6, .L91+16
	ldr	r4, .L91+20
	ldr	fp, .L91+24
	strh	r0, [r2]	@ movhi
	ldr	r2, .L91+28
	ldr	r0, .L91+32
	strh	r3, [r6]	@ movhi
	strh	r3, [r4]	@ movhi
	str	r1, [fp]
	mov	lr, pc
	bx	r2
	mov	r3, #1
	ldr	r2, .L91+36
	ldr	r10, .L91+40
	str	r3, [r2]
	ldr	r9, .L91+44
	ldr	r5, .L91+48
	ldr	r8, .L91+52
	ldr	r7, .L91+56
	b	.L86
.L81:
	str	r3, [r5]
.L79:
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
.L86:
	ldrh	r3, [r4]
	strh	r3, [r6]	@ movhi
	ldr	r3, .L91+60
	ldrh	r3, [r3, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r10
	ldrb	r3, [r9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L79
	ldr	r3, .L91+32
	ldr	r1, .L91+64
	str	r3, [sp]
	ldr	r0, .L91+68
	mov	r3, #50
	mov	r2, #100
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	ip, .L91+72
	mov	lr, pc
	bx	ip
	ldr	r3, [r5]
	ldr	r2, [fp]
	cmp	r3, r2
	addne	r3, r3, #1
	bne	.L81
	ldr	r3, .L91+76
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, .L91+36
	ldr	r3, [r3]
	beq	.L82
	cmp	r3, #9
	moveq	r3, #1
	ldr	r2, .L91+36
	addne	r3, r3, #1
	str	r3, [r2]
.L84:
	mov	r3, #1
	b	.L81
.L82:
	cmp	r3, #1
	moveq	r3, #9
	ldr	r2, .L91+36
	subne	r3, r3, #1
	str	r3, [r2]
	b	.L84
.L92:
	.align	2
.L91:
	.word	mgba_open
	.word	.LC3
	.word	mgba_printf
	.word	1027
	.word	oldButtons
	.word	buttons
	.word	frameLim
	.word	fillScreen
	.word	32767
	.word	dFrame
	.word	update
	.word	.LANCHOR1
	.word	skipFrames
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.word	y
	.word	x
	.word	drawRect
	.word	.LANCHOR0
	.size	main, .-main
	.global	toggleDirection
	.global	isLooping
	.comm	frameLim,4,4
	.comm	skipFrames,4,4
	.comm	dFrame,4,4
	.comm	y,4,4
	.comm	x,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.data
	.set	.LANCHOR0,. + 0
	.type	toggleDirection, %object
	.size	toggleDirection, 1
toggleDirection:
	.byte	1
	.bss
	.set	.LANCHOR1,. + 0
	.type	isLooping, %object
	.size	isLooping, 1
isLooping:
	.space	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
