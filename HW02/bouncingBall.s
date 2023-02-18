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
	.file	"bouncingBall.c"
	.text
	.align	2
	.global	updateBallPosition
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBallPosition, %function
updateBallPosition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L13
	ldr	r3, .L13+4
	ldr	r2, [r2]
	smull	r1, r3, r2, r3
	sub	r3, r3, r2, asr #31
	add	r3, r3, r3, lsl #1
	sub	r1, r2, r3
	rsbs	r3, r1, #0
	adc	r3, r3, r1
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	bxeq	lr
	ldr	r2, .L13+8
	ldr	r3, .L13+12
	ldr	r0, [r2]
	push	{r4, r5, lr}
	ldr	ip, [r3, #16]
	ldr	r4, [r3, #8]
	ldr	r5, [r3]
	add	r0, r0, #2
	add	r1, r5, r4
	add	r0, r0, ip
	cmp	r1, r0
	ldr	r0, .L13+16
	ldr	r2, [r3, #4]
	str	r5, [r0]
	ldr	r0, .L13+20
	str	r2, [r0]
	ldr	r0, .L13+24
	ldr	r0, [r0]
	ldr	lr, [r3, #12]
	add	r0, r0, #2
	add	r2, r2, lr
	rsblt	r4, r4, #0
	add	r0, r0, ip
	strlt	r4, [r3, #8]
	cmp	r2, r0
	ldr	r0, .L13+28
	rsblt	lr, lr, #0
	strlt	lr, [r3, #12]
	ldr	r0, [r0]
	ldr	lr, [r3, #20]
	sub	r0, r0, ip
	str	r1, [r3]
	add	r1, r1, lr
	cmp	r1, r0
	ldrge	r1, [r3, #8]
	rsbge	r1, r1, #0
	strge	r1, [r3, #8]
	ldr	r1, .L13+32
	ldr	r1, [r1]
	str	r2, [r3, #4]
	sub	ip, r1, ip
	add	r2, r2, lr
	cmp	r2, ip
	ldrge	r2, [r3, #12]
	rsbge	r2, r2, #0
	strge	r2, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	1431655766
	.word	leftBound
	.word	.LANCHOR1
	.word	prevBallX
	.word	prevBallY
	.word	topBound
	.word	rightBound
	.word	botBound
	.size	updateBallPosition, .-updateBallPosition
	.align	2
	.global	drawSquare
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSquare, %function
drawSquare:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxeq	lr
	push	{r4, lr}
	sub	r2, r2, #1
	ldr	lr, .L27
	and	r2, r2, #255
	add	ip, r1, r2
	ldr	r1, [lr]
	rsb	ip, ip, ip, lsl #4
	add	ip, r0, ip, lsl #4
	ldr	lr, .L27+4
	rsb	r4, r2, r2, lsl #4
	add	r1, r1, #480
	lsl	r4, r4, #5
	add	r1, r1, ip, lsl #1
	add	ip, r0, #1
	sub	lr, lr, r4
	add	ip, ip, r2
.L17:
	add	r2, lr, r1
.L18:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L18
	add	r0, r0, #1
	cmp	r0, ip
	add	r1, r1, #2
	bne	.L17
	pop	{r4, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	videoBuffer
	.word	-480
	.size	drawSquare, .-drawSquare
	.align	2
	.global	drawBouncingBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBouncingBall, %function
drawBouncingBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L42
	ldrb	r2, [r4, #20]	@ zero_extendqisi2
	ldr	r1, .L42+4
	ldr	r3, .L42+8
	cmp	r2, #0
	ldr	ip, [r1]
	ldr	r3, [r3]
	beq	.L29
	sub	r2, r2, #1
	ldr	r1, .L42+12
	and	lr, r2, #255
	and	r3, r3, #255
	ldr	r1, [r1]
	add	r3, r3, lr
	and	ip, ip, #255
	rsb	r3, r3, r3, lsl #4
	add	r5, lr, #1
	add	r2, ip, r3, lsl #4
	add	r1, r1, #480
	add	ip, ip, #1
	sub	r5, r5, r5, lsl #4
	ldr	r0, .L42+16
	add	r2, r1, r2, lsl #1
	lsl	r5, r5, #5
	add	r6, ip, lr
.L31:
	add	r3, r5, r2
.L32:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L32
	cmp	ip, r6
	add	r2, r2, #2
	beq	.L33
	add	ip, ip, #1
	b	.L31
.L29:
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	ldrb	r0, [r4]	@ zero_extendqisi2
	add	r3, r3, lr
	rsb	r3, r3, r3, lsl #4
	add	r2, r0, r3, lsl #4
	add	r2, r1, r2, lsl #1
	mov	r1, #31744
	add	r0, r0, #1
	add	lr, r0, lr
.L35:
	add	r3, r5, r2
.L34:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L34
	cmp	r0, lr
	add	r2, r2, #2
	beq	.L29
	add	r0, r0, #1
	b	.L35
.L43:
	.align	2
.L42:
	.word	.LANCHOR1
	.word	prevBallX
	.word	prevBallY
	.word	videoBuffer
	.word	15855
	.size	drawBouncingBall, .-drawBouncingBall
	.global	screenHeight
	.global	screenWidth
	.global	padding
	.comm	prevBallY,4,4
	.comm	prevBallX,4,4
	.global	ball_Vy
	.global	ball_Vx
	.global	ballY
	.global	ballX
	.global	ballSize
	.global	time
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ballX, %object
	.size	ballX, 4
ballX:
	.word	52
	.type	ballY, %object
	.size	ballY, 4
ballY:
	.word	20
	.type	ball_Vx, %object
	.size	ball_Vx, 4
ball_Vx:
	.word	2
	.type	ball_Vy, %object
	.size	ball_Vy, 4
ball_Vy:
	.word	4
	.type	padding, %object
	.size	padding, 4
padding:
	.word	1
	.type	ballSize, %object
	.size	ballSize, 4
ballSize:
	.word	2
	.type	screenHeight, %object
	.size	screenHeight, 4
screenHeight:
	.word	120
	.type	screenWidth, %object
	.size	screenWidth, 4
screenWidth:
	.word	180
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	time, %object
	.size	time, 4
time:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
