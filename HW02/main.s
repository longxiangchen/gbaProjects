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
	.global	updateGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	updateBallPosition
	.word	updatePlayerBox
	.size	updateGame, .-updateGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L13
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	sub	sp, sp, #8
	bne	.L12
.L7:
	ldr	r3, .L13+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+8
	mov	lr, pc
	bx	r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L12:
	mov	r5, #0
	mov	r3, #160
	mov	r2, #240
	mov	r1, #18
	mov	r0, #50
	str	r5, [sp]
	ldr	r6, .L13+12
	mov	lr, pc
	bx	r6
	ldr	r3, .L13+16
	mov	lr, pc
	bx	r3
	strb	r5, [r4]
	b	.L7
.L14:
	.align	2
.L13:
	.word	erase
	.word	drawBouncingBall
	.word	drawPlayerBox
	.word	drawRect
	.word	boundingBox
	.size	drawGame, .-drawGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"YOU LOSE! TRY AGAIN NEXT TIME\000"
	.text
	.align	2
	.global	drawLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLose, %function
drawLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #80
	ldr	r4, .L17
	mov	r0, #35
	ldr	r3, .L17+4
	ldr	r2, .L17+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	drawString
	.word	32767
	.word	.LC0
	.size	drawLose, .-drawLose
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
	ldr	r3, .L21
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+8
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L21+12
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	fillScreen
	.word	drawLives
	.word	boundingBox
	.word	state
	.size	goToGame, .-goToGame
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
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L25
	mov	lr, pc
	bx	r3
	mov	lr, #3
	ldr	ip, .L25+4
	ldr	r4, .L25+8
	mov	r1, #80
	mov	r0, #35
	ldr	r3, .L25+12
	ldr	r2, .L25+16
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	fillScreen
	.word	state
	.word	drawString
	.word	32767
	.word	.LC0
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"START\000"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	mov	r1, #30
	mov	lr, #0
	ldr	ip, .L29+4
	ldr	r4, .L29+8
	mov	r0, r1
	ldr	r3, .L29+12
	ldr	r2, .L29+16
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	fillScreen
	.word	state
	.word	drawString
	.word	32767
	.word	.LC1
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
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L32
	strh	r2, [r3]	@ movhi
	b	goToStart
.L33:
	.align	2
.L32:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.global	drawStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStart, %function
drawStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #30
	push	{r4, lr}
	mov	r0, r1
	ldr	r4, .L36
	ldr	r3, .L36+4
	ldr	r2, .L36+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	drawString
	.word	32767
	.word	.LC1
	.size	drawStart, .-drawStart
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"INFO\000"
	.text
	.align	2
	.global	goToInfo
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInfo, %function
goToInfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	mov	r1, #30
	mov	lr, #1
	ldr	ip, .L40+4
	ldr	r4, .L40+8
	mov	r0, r1
	ldr	r3, .L40+12
	ldr	r2, .L40+16
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	fillScreen
	.word	state
	.word	drawString
	.word	32767
	.word	.LC2
	.size	goToInfo, .-goToInfo
	.align	2
	.global	drawInfo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawInfo, %function
drawInfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #30
	push	{r4, lr}
	mov	r0, r1
	ldr	r4, .L44
	ldr	r3, .L44+4
	ldr	r2, .L44+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	drawString
	.word	32767
	.word	.LC2
	.size	drawInfo, .-drawInfo
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"CONGRATULATIONS! YOU'VE WON JEZZ BALL\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	mov	lr, #4
	ldr	ip, .L48+4
	ldr	r4, .L48+8
	mov	r1, #30
	mov	r0, #15
	ldr	r3, .L48+12
	ldr	r2, .L48+16
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	fillScreen
	.word	state
	.word	drawString
	.word	32767
	.word	.LC3
	.size	goToWin, .-goToWin
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L81+4
	ldr	r5, .L81+8
	ldr	r8, .L81+12
	strh	r2, [r3]	@ movhi
	ldr	r3, .L81+16
	mov	lr, pc
	bx	r3
	ldr	r7, .L81+20
	ldrh	r1, [r5]
	ldrb	r2, [r8]	@ zero_extendqisi2
	ldr	fp, .L81+24
	ldr	r9, .L81+28
	ldr	r10, .L81+32
	ldr	r4, .L81+36
	ldr	r6, .L81+40
.L64:
	strh	r1, [r7]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r3, [r5]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L65
.L53:
	.word	.L57
	.word	.L56
	.word	.L55
	.word	.L54
	.word	.L52
.L56:
	tst	r1, #4
	beq	.L61
	ldrh	r3, [r6, #48]
	tst	r3, #4
	beq	.L78
.L61:
	tst	r1, #8
	beq	.L55
	ldrh	r3, [r6, #48]
	tst	r3, #8
	ldreq	r3, .L81+44
	moveq	lr, pc
	bxeq	r3
.L55:
	mov	lr, pc
	bx	fp
	ldr	r3, .L81+48
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r9
	ldr	r3, .L81+52
	mov	lr, pc
	bx	r3
	ldr	r3, [r10]
	cmp	r3, #0
	ble	.L79
.L62:
	ldr	r3, .L81+56
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L63
.L77:
	ldrh	r1, [r5]
	ldrb	r2, [r8]	@ zero_extendqisi2
.L51:
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	b	.L64
.L57:
	tst	r1, #4
	beq	.L58
	ldrh	r3, [r6, #48]
	tst	r3, #4
	beq	.L80
.L58:
	tst	r1, #8
	beq	.L77
	ldrh	r3, [r6, #48]
	tst	r3, #8
	bne	.L77
	ldr	r3, .L81+44
	mov	lr, pc
	bx	r3
	ldrh	r1, [r5]
	ldrb	r2, [r8]	@ zero_extendqisi2
	b	.L51
.L52:
	mov	lr, pc
	bx	r9
	mov	r1, #30
	ldr	r3, .L81+60
	ldr	r2, .L81+64
	ldr	ip, .L81+68
	mov	r0, #15
	mov	lr, pc
	bx	ip
	b	.L77
.L54:
	mov	lr, pc
	bx	r9
	mov	r1, #80
	ldr	r3, .L81+60
	ldr	r2, .L81+72
	ldr	ip, .L81+68
	mov	r0, #35
	mov	lr, pc
	bx	ip
	b	.L77
.L63:
	ldr	r3, .L81+76
	mov	lr, pc
	bx	r3
	ldrh	r1, [r5]
	ldrb	r2, [r8]	@ zero_extendqisi2
	b	.L51
.L79:
	ldr	r3, .L81+80
	mov	lr, pc
	bx	r3
	b	.L62
.L78:
	ldr	r3, .L81+16
	mov	lr, pc
	bx	r3
	ldrh	r1, [r7]
	b	.L61
.L80:
	ldr	r3, .L81+84
	mov	lr, pc
	bx	r3
	ldrh	r1, [r7]
	b	.L58
.L65:
	mov	r1, r3
	b	.L51
.L82:
	.align	2
.L81:
	.word	mgba_open
	.word	1027
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	updateBallPosition
	.word	waitForVBlank
	.word	lives
	.word	time
	.word	67109120
	.word	goToGame
	.word	updatePlayerBox
	.word	drawGame
	.word	.LANCHOR0
	.word	32767
	.word	.LC3
	.word	drawString
	.word	.LC0
	.word	goToWin
	.word	goToLose
	.word	goToInfo
	.size	main, .-main
	.text
	.align	2
	.global	drawWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWin, %function
drawWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #30
	ldr	r4, .L85
	mov	r0, #15
	ldr	r3, .L85+4
	ldr	r2, .L85+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	drawString
	.word	32767
	.word	.LC3
	.size	drawWin, .-drawWin
	.global	drawLine
	.comm	state,1,1
	.global	scanlineCounter
	.global	win
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.data
	.align	2
	.type	scanlineCounter, %object
	.size	scanlineCounter, 4
scanlineCounter:
	.word	67108870
	.bss
	.set	.LANCHOR0,. + 0
	.type	win, %object
	.size	win, 1
win:
	.space	1
	.type	drawLine, %object
	.size	drawLine, 1
drawLine:
	.space	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
