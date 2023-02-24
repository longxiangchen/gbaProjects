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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"spring 2023\000"
	.align	2
.LC1:
	.ascii	"GBA RUN\000"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, sp, #28
	ldr	r3, .L7
	mov	lr, pc
	bx	r3
	ldr	r2, .L7+4
	ldr	r3, .L7+8
	ldm	r2, {r0, r1}
	lsr	r5, r1, #16
	str	r0, [sp]
	strh	r1, [sp, #4]	@ movhi
	ldm	r3, {r0, r1, r2, r3}
	add	lr, sp, #8
	stmia	lr!, {r0, r1, r2}
	strb	r5, [sp, #6]
	mov	r4, #84
	mov	ip, #71
	strh	r3, [lr]	@ movhi
	ldr	r7, .L7+12
	add	r5, sp, #8
	add	r6, sp, #1
	b	.L3
.L6:
	ldrb	ip, [r6], #1	@ zero_extendqisi2
.L3:
	mov	r0, r4
	mov	r2, ip
	mov	r1, #70
	ldrh	r3, [r5], #2
	add	r4, r4, #12
	mov	lr, pc
	bx	r7
	cmp	r4, #168
	bne	.L6
	mov	r1, #96
	mov	r0, #84
	ldr	r3, .L7+16
	ldr	r2, .L7+20
	ldr	r4, .L7+24
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #1
	ldr	ip, .L7+28
	ldr	r0, .L7+32
	ldr	r2, .L7+36
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2, #32]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	fillScreen
	.word	.LC1
	.word	.LANCHOR0
	.word	drawChar
	.word	31676
	.word	.LC2
	.word	drawString
	.word	state
	.word	rSeed
	.word	player
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #2
	mvn	ip, #170
	mov	r2, #0
	str	lr, [sp, #-4]!
	ldr	lr, .L11
	strh	lr, [r3]	@ movhi
	strh	r0, [r3, #132]	@ movhi
	strh	ip, [r3, #128]	@ movhi
	ldr	r0, .L11+4
	strh	r1, [r3, #130]	@ movhi
	ldr	r1, .L11+8
	ldrh	r0, [r0, #48]
	ldr	r3, .L11+12
	ldr	lr, [sp], #4
	strh	r0, [r1]	@ movhi
	strh	r2, [r3]	@ movhi
	b	goToStart
.L12:
	.align	2
.L11:
	.word	1027
	.word	67109120
	.word	buttons
	.word	oldButtons
	.size	initialize, .-initialize
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"SCORE:\000"
	.text
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	ldr	r4, .L15+4
	ldr	r3, .L15+8
	ldr	r2, .L15+12
	mov	r1, #1
	mov	r0, #175
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L15+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC3
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L24
	ldr	r3, [r4]
	ldr	r2, .L24+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L24+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L18
	ldr	r3, .L24+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L23
.L18:
	mov	r3, #67108864
	mov	r0, #128
	mov	r2, #8
	ldr	r1, .L24+16
	strh	r0, [r3, #104]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #108]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	bx	lr
.L23:
	ldr	r0, [r4]
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L18
.L25:
	.align	2
.L24:
	.word	rSeed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	-14420
	.word	srand
	.word	initGame
	.size	start, .-start
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"GAME IS PAUSED\000"
	.align	2
.LC5:
	.ascii	"CURRENT SCORE: \000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L28
	mov	r0, #0
	ldr	r3, .L28+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L28+8
	mov	r3, r5
	mov	r1, #8
	mov	r0, #136
	ldr	r2, .L28+12
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L28+16
	mov	r1, #18
	mov	r0, #130
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+20
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L28+24
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L29:
	.align	2
.L28:
	.word	13526
	.word	fillScreen
	.word	drawString
	.word	.LC4
	.word	.LC5
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"GAME OVER\000"
	.align	2
.LC7:
	.ascii	"YOUR SCORE: \000"
	.align	2
.LC8:
	.ascii	"HIGH SCORE: \000"
	.align	2
.LC9:
	.ascii	"%d\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L32
	mov	r0, #0
	ldr	r3, .L32+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L32+8
	mov	r3, r5
	mov	r1, #8
	mov	r0, #136
	ldr	r2, .L32+12
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #18
	mov	r0, #130
	ldr	r2, .L32+16
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #28
	mov	r0, #130
	ldr	r2, .L32+20
	mov	lr, pc
	bx	r4
	ldr	r5, .L32+24
	ldr	r8, .L32+28
	ldr	r3, .L32+32
	ldr	r6, .L32+36
	mov	r1, r8
	ldr	r2, [r3]
	ldr	r7, .L32+40
	mov	r0, r5
	mov	lr, pc
	bx	r7
	mov	r2, r5
	mov	r3, r6
	mov	r1, #18
	mov	r0, #195
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+44
	mov	r1, r8
	ldr	r2, [r3]
	mov	r0, r5
	mov	lr, pc
	bx	r7
	mov	r3, r6
	mov	r2, r5
	mov	r1, #28
	mov	r0, #195
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L32+48
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	13526
	.word	fillScreen
	.word	drawString
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	buffer
	.word	.LC9
	.word	score
	.word	32767
	.word	sprintf
	.word	highScore
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L43
	sub	sp, sp, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+4
	ldr	r1, .L43+8
	ldr	r2, [r3]
	ldr	r0, .L43+12
	ldr	r3, .L43+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+24
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r3, #8
	mov	r1, #1
	mov	r0, #210
	str	r2, [sp]
	ldr	r4, .L43+28
	mov	r2, #50
	mov	lr, pc
	bx	r4
	mov	r1, #1
	mov	r0, #210
	ldr	r3, .L43+32
	ldr	r2, .L43+12
	ldr	r4, .L43+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L35
	ldr	r3, .L43+48
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L41
.L35:
	ldr	r3, .L43+52
	ldr	r3, [r3, #32]
	cmp	r3, #0
	ble	.L42
.L36:
	mov	r3, #67108864
	mov	r0, #128
	mov	r2, #8
	ldr	r1, .L43+56
	strh	r0, [r3, #104]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L42:
	bl	goToLose
	b	.L36
.L41:
	bl	goToPause
	b	.L35
.L44:
	.align	2
.L43:
	.word	updateGame
	.word	score
	.word	.LC9
	.word	buffer
	.word	sprintf
	.word	mgba_open
	.word	waitForVBlank
	.word	drawRect
	.word	32767
	.word	drawString
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	player
	.word	-14420
	.size	game, .-game
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L57
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
	ldr	r2, .L57+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L55
.L46:
	tst	r3, #4
	beq	.L47
	ldr	r3, .L57+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L56
.L47:
	mov	r3, #67108864
	mov	r2, #15
	ldr	r0, .L57+12
	ldr	r1, .L57+16
	strh	r0, [r3, #104]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #108]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	bx	lr
.L55:
	bl	goToGame
	b	.L47
.L56:
	bl	goToLose
	b	.L47
.L58:
	.align	2
.L57:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	20608
	.word	-30804
	.size	pause, .-pause
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L66
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L66+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
	ldr	r3, .L66+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L60:
	mov	r3, #67108864
	mov	r0, #128
	mov	r2, #8
	ldr	r1, .L66+12
	strh	r0, [r3, #104]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #108]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	bx	lr
.L65:
	bl	goToStart
	b	.L60
.L67:
	.align	2
.L66:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	-14420
	.size	lose, .-lose
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
	mov	r3, #67108864
	mov	ip, #128
	mvn	r0, #170
	mov	r1, #2
	mov	r2, #0
	push	{r4, r7, fp, lr}
	ldr	lr, .L79
	ldr	r4, .L79+4
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #132]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r1, [r3, #130]	@ movhi
	ldr	fp, .L79+8
	ldrh	r1, [r4, #48]
	ldr	r5, .L79+12
	ldr	r3, .L79+16
	strh	r1, [fp]	@ movhi
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L79+20
	ldr	r10, .L79+24
	ldr	r9, .L79+28
	ldr	r8, .L79+32
	ldr	r7, .L79+36
.L69:
	ldr	r2, [r6]
	ldrh	r3, [fp]
.L70:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L70
.L72:
	.word	.L75
	.word	.L74
	.word	.L73
	.word	.L71
.L71:
	mov	lr, pc
	bx	r7
	b	.L69
.L73:
	mov	lr, pc
	bx	r8
	b	.L69
.L74:
	mov	lr, pc
	bx	r9
	b	.L69
.L75:
	mov	lr, pc
	bx	r10
	b	.L69
.L80:
	.align	2
.L79:
	.word	1027
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	goToStart
	.word	state
	.word	start
	.word	game
	.word	pause
	.word	lose
	.size	main, .-main
	.comm	highScore,4,4
	.comm	score,4,4
	.comm	rSeed,4,4
	.comm	state,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	buffer,41,4
	.comm	NOTES,2,2
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.short	13526
	.short	16668
	.short	21951
	.short	27295
	.short	28274
	.short	26437
	.short	21152
	.ident	"GCC: (devkitARM release 53) 9.1.0"
