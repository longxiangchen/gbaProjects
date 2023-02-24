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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObstacle.part.0, %function
updateObstacle.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L14
	ldr	ip, [r5, #24]
	sub	sp, sp, #16
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r6, [r5, #28]
	ldr	lr, [r5, #4]
	mov	r4, r0
	ldm	r0, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r5]
	str	r6, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r6, .L14+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L2
	ldrh	r3, [r4, #36]
	ldr	r2, .L14+8
	cmp	r3, r2
	beq	.L12
	ldr	r2, .L14+12
	cmp	r3, r2
	beq	.L13
	ldrh	r1, [r5, #36]
	cmp	r1, r3
	ldreq	r2, .L14+16
	ldrne	r3, [r5, #32]
	ldreq	r3, [r2]
	ldrne	r1, .L14+20
	addeq	r3, r3, #10
	subne	r3, r3, #1
	streq	r3, [r2]
	strne	r3, [r5, #32]
	strhne	r2, [r1]	@ movhi
.L2:
	ldr	r3, [r5, #28]
	ldr	r2, [r4, #4]
	add	r3, r3, #145
	cmp	r2, r3
	movgt	r3, #0
	strgt	r3, [r4, #20]
	strgt	r3, [r4, #40]
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	add	r3, r3, r2
	str	r2, [r4, #12]
	str	r3, [r4, #4]
	str	r1, [r4, #8]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L12:
	mov	r3, #0
	mov	r0, #1
	ldr	r1, .L14+24
	ldr	r2, .L14+28
	str	r0, [r1]
	str	r3, [r4, #20]
	str	r3, [r4, #40]
	str	r3, [r2]
	b	.L2
.L13:
	mov	r2, #1
	ldr	r3, .L14+28
	str	r2, [r3]
	b	.L2
.L15:
	.align	2
.L14:
	.word	player
	.word	collision
	.word	1023
	.word	15855
	.word	score
	.word	healthIndicator
	.word	poweredUp
	.word	poweredDown
	.size	updateObstacle.part.0, .-updateObstacle.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #0
	ldr	r6, .L20
	str	r7, [r6]
	ldr	r6, .L20+4
	str	r7, [r6]
	ldr	r6, .L20+8
	str	r7, [r6]
	ldr	r6, .L20+12
	str	r7, [r6]
	ldr	r6, .L20+16
	str	r7, [r6]
	ldr	r6, .L20+20
	mov	r0, r7
	str	r7, [r6, #16]
	str	r7, [r6, #20]
	mov	r7, #15
	str	r7, [r6, #24]
	mov	r7, #2
	mov	r9, #10
	mov	fp, #145
	mov	r10, #110
	mov	r8, #31744
	str	r7, [r6, #32]
	mov	r7, #50
	mov	r5, r9
	mov	r1, #30
	mov	r2, #100
	mov	r4, #25
	mvn	lr, #32768
	str	r10, [r6]
	str	fp, [r6, #4]
	str	fp, [r6, #12]
	str	r10, [r6, #8]
	str	r9, [r6, #28]
	strh	r8, [r6, #36]	@ movhi
	ldr	r6, .L20+24
	ldr	r3, .L20+28
	strh	r8, [r6]	@ movhi
	ldr	r6, .L20+32
	add	ip, r3, #1312
	str	r7, [r6]
	add	ip, ip, #8
.L17:
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	str	r4, [r3, #28]
	str	r5, [r3, #24]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	strh	lr, [r3, #36]	@ movhi
	add	r3, r3, #44
	cmp	r3, ip
	bne	.L17
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	count
	.word	score
	.word	time
	.word	poweredDown
	.word	poweredUp
	.word	player
	.word	healthIndicator
	.word	obstacles
	.word	spawnDelay
	.size	initGame, .-initGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #145
	push	{r4, r5, lr}
	mov	r0, #110
	mov	r5, #10
	mov	r4, #15
	mov	lr, #2
	mov	r1, #0
	mov	r2, #31744
	ldr	r3, .L24
	str	ip, [r3, #4]
	str	ip, [r3, #12]
	ldr	ip, .L24+4
	str	r5, [r3, #28]
	str	r4, [r3, #24]
	str	lr, [r3, #32]
	str	r0, [r3]
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	strh	r2, [r3, #36]	@ movhi
	strh	r2, [ip]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	player
	.word	healthIndicator
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initObstacles
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObstacles, %function
initObstacles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r0, #30
	mov	r1, #100
	mov	r5, #25
	mov	r4, #10
	mov	r2, #0
	mvn	lr, #32768
	ldr	r3, .L30
	add	ip, r3, #1312
	add	ip, ip, #8
.L27:
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	str	r5, [r3, #28]
	str	r4, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	strh	lr, [r3, #36]	@ movhi
	add	r3, r3, #44
	cmp	r3, ip
	bne	.L27
	pop	{r4, r5, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	obstacles
	.size	initObstacles, .-initObstacles
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L47
	ldr	r3, [r3]
	ldr	r0, .L47+4
	cmp	r3, #0
	str	lr, [sp, #-4]!
	ldrh	r2, [r0]
	bne	.L43
	ldr	r3, .L47+8
.L33:
	tst	r2, #32
	ldr	r1, [r3]
	bne	.L36
	cmp	r1, #72
	ble	.L36
	mvn	r2, #1
	str	r2, [r3, #16]
	add	ip, r1, r2
	ldr	r2, .L47+12
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L45
.L39:
	ldr	r0, [r3, #4]
	ldr	r2, [r3, #20]
	add	r2, r2, r0
	str	r1, [r3, #8]
	str	ip, [r3]
	str	r0, [r3, #12]
	str	r2, [r3, #4]
	ldr	lr, [sp], #4
	bx	lr
.L36:
	tst	r2, #16
	beq	.L46
.L38:
	mov	lr, #0
	mov	ip, r1
	ldr	r2, .L47+16
	ldrh	r2, [r2]
	str	lr, [r3, #16]
	strh	r2, [r3, #36]	@ movhi
.L37:
	ldr	r2, .L47+12
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L39
.L45:
	ldrh	r2, [r0]
	tst	r2, #1
	moveq	r2, #31
	strheq	r2, [r3, #36]	@ movhi
	beq	.L39
	tst	r2, #2
	ldreq	r2, .L47+20
	strheq	r2, [r3, #36]	@ movhi
	b	.L39
.L43:
	tst	r2, #64
	bne	.L34
	mvn	r1, #1
	ldr	r3, .L47+8
	str	r1, [r3, #20]
	b	.L33
.L46:
	ldr	r2, [r3, #24]
	add	r2, r1, r2
	cmp	r2, #162
	bgt	.L38
	mov	r2, #2
	str	r2, [r3, #16]
	add	ip, r1, r2
	b	.L37
.L34:
	tst	r2, #128
	moveq	r1, #2
	movne	r1, #0
	ldr	r3, .L47+8
	str	r1, [r3, #20]
	b	.L33
.L48:
	.align	2
.L47:
	.word	poweredUp
	.word	buttons
	.word	player
	.word	poweredDown
	.word	healthIndicator
	.word	31775
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, lr}
	ldr	r4, .L51
	sub	sp, sp, #12
	str	r3, [sp]
	add	r2, r4, #24
	add	r0, r4, #8
	ldm	r2, {r2, r3}
	ldr	r5, .L51+4
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #36]
	ldr	r3, [r4, #28]
	str	r2, [sp]
	ldm	r4, {r0, r1}
	ldr	r2, [r4, #24]
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	player
	.word	drawRect
	.size	drawPlayer, .-drawPlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"TRYING TO IMPLEMENT NEWOBSTACLE()\000"
	.align	2
.LC1:
	.ascii	"INSIDE OCOUNT WHILE LOOP\000"
	.align	2
.LC2:
	.ascii	"SPAWNING POWERUP\000"
	.align	2
.LC3:
	.ascii	"COLOR CHANGED TO MAGENTA\000"
	.align	2
.LC4:
	.ascii	"COLOR CHANGED TO RED\000"
	.align	2
.LC5:
	.ascii	"COLOR CHANGED TO WHITE\000"
	.align	2
.LC6:
	.ascii	"COLOR CHANGED TO GRAY\000"
	.align	2
.LC7:
	.ascii	"(x, y): (%d, %d)\000"
	.align	2
.LC8:
	.ascii	"yVelocity: %d\000"
	.text
	.align	2
	.global	newObstacle
	.syntax unified
	.arm
	.fpu softvfp
	.type	newObstacle, %function
newObstacle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, .L70
	ldr	r7, .L70+4
	ldr	r9, .L70+8
	mov	lr, pc
	bx	r7
	mov	r4, #0
	mov	lr, pc
	bx	r9
	subs	r2, r4, r0
	ldr	r8, .L70+12
	and	r2, r2, #3
	and	r3, r0, #3
	rsbpl	r3, r2, #0
	mov	r6, r8
	ldr	r10, .L70+16
	add	r5, r3, #1
	b	.L66
.L54:
	add	r4, r4, #1
	cmp	r4, #30
	add	r6, r6, #44
	beq	.L65
.L66:
	mov	r0, r10
	mov	lr, pc
	bx	r7
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L54
	mov	r2, #25
	mov	r1, #30
	add	r10, r4, r4, lsl #2
	add	r10, r4, r10, lsl #1
	add	r3, r8, r10, lsl #2
	str	r2, [r3, #28]
	str	r1, [r3, #4]
	mov	lr, pc
	bx	r9
	ldr	r3, .L70+20
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r0, r3
	add	r6, r3, #1
	mov	lr, pc
	bx	r9
	ldr	r3, .L70+24
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r6, #2
	lsl	r10, r10, #2
	sub	r3, r0, r3, lsl #1
	lsl	fp, r4, #2
	beq	.L55
	cmp	r6, #3
	beq	.L56
	cmp	r6, #1
	moveq	r2, #71
	streq	r2, [r8, r10]
.L57:
	cmp	r3, #9
	beq	.L69
.L58:
	sub	r3, r5, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L59
.L61:
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L60
.L60:
	mov	r1, #10
	mov	r2, #20
	add	r5, fp, r4
	ldr	r0, .L70+28
	add	r5, r4, r5, lsl #1
	add	r3, r8, r5, lsl #2
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	strh	r0, [r3, #36]	@ movhi
	mov	lr, pc
	bx	r9
	ldr	r3, .L70+24
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #4
	add	r3, r0, #70
	lsl	r5, r5, #2
	ldr	r0, .L70+32
	str	r3, [r8, r5]
	mov	lr, pc
	bx	r7
.L59:
	mov	r3, #1
	add	fp, fp, r4
	add	r4, r4, fp, lsl r3
	add	r5, r8, r4, lsl #2
	ldr	r1, [r8, r4, lsl #2]
	ldr	r0, .L70+36
	ldr	r2, [r5, #4]
	str	r3, [r5, #20]
	str	r3, [r5, #16]
	mov	lr, pc
	bx	r7
	ldr	r1, [r5, #16]
	ldr	r0, .L70+40
	mov	lr, pc
	bx	r7
.L65:
	mov	r3, #67108864
	mov	r2, #127
	ldr	r0, .L70+44
	ldr	r1, .L70+48
	strh	r0, [r3, #104]	@ movhi
	strh	r1, [r3, #108]	@ movhi
	strh	r2, [r3, #96]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	mov	r2, #104
	cmp	r3, #9
	str	r2, [r8, r10]
	bne	.L58
.L69:
	mov	r2, #5
	mvn	r1, #64512
	add	r5, fp, r4
	add	r5, r4, r5, lsl #1
	add	r3, r8, r5, lsl #2
	strh	r1, [r3, #36]	@ movhi
	str	r2, [r3, #28]
	str	r2, [r3, #24]
	ldr	r0, .L70+52
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r9
	ldr	r3, .L70+24
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #4
	lsl	r5, r5, #2
	add	r0, r0, #70
	str	r0, [r8, r5]
	b	.L59
.L56:
	mov	r2, #137
	str	r2, [r8, r10]
	b	.L57
.L62:
	mov	r1, #35
	mvn	r2, #32768
	add	r3, fp, r4
	add	r3, r4, r3, lsl #1
	add	r3, r8, r3, lsl #2
	str	r1, [r3, #24]
	ldr	r0, .L70+56
	strh	r2, [r3, #36]	@ movhi
	mov	lr, pc
	bx	r7
	b	.L59
.L63:
	mov	r2, #31
	add	r3, fp, r4
	add	r3, r4, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r0, .L70+60
	strh	r2, [r3, #36]	@ movhi
	mov	lr, pc
	bx	r7
	b	.L59
.L64:
	add	r3, fp, r4
	ldr	r2, .L70+64
	add	r3, r4, r3, lsl #1
	add	r3, r8, r3, lsl #2
	ldr	r0, .L70+68
	strh	r2, [r3, #36]	@ movhi
	mov	lr, pc
	bx	r7
	b	.L59
.L71:
	.align	2
.L70:
	.word	.LC0
	.word	mgba_printf
	.word	rand
	.word	obstacles
	.word	.LC1
	.word	1431655766
	.word	1717986919
	.word	15855
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	22400
	.word	-14690
	.word	.LC2
	.word	.LC5
	.word	.LC4
	.word	31775
	.word	.LC3
	.size	newObstacle, .-newObstacle
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L85
	ldr	r7, .L85+4
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	r4, .L85+8
	add	r2, r2, #1
	add	r3, r3, #1
	add	r5, r4, #1312
	str	r2, [r6]
	str	r3, [r7]
	add	r5, r5, #8
	bl	updatePlayer
	b	.L74
.L73:
	add	r4, r4, #44
	cmp	r4, r5
	beq	.L84
.L74:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L73
	mov	r0, r4
	add	r4, r4, #44
	bl	updateObstacle.part.0
	cmp	r4, r5
	bne	.L74
.L84:
	ldr	r4, .L85+12
	ldr	r2, [r6]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L75
	ldr	r3, .L85+16
	ldr	r3, [r3]
.L76:
	cmp	r3, #30
	bne	.L77
	ldr	r3, [r4]
	cmp	r3, #20
	subgt	r3, r3, #2
	strgt	r3, [r4]
.L77:
	ldr	r3, .L85+20
	ldr	r2, [r7]
	ldr	r1, [r3]
	cmp	r2, r1
	strgt	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L75:
	bl	newObstacle
	mov	r1, #0
	ldr	r2, .L85+16
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r6]
	b	.L76
.L86:
	.align	2
.L85:
	.word	time
	.word	score
	.word	obstacles
	.word	spawnDelay
	.word	count
	.word	highScore
	.size	updateGame, .-updateGame
	.align	2
	.global	updateObstacle
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObstacle, %function
updateObstacle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	cmp	r3, #0
	bxeq	lr
	b	updateObstacle.part.0
	.size	updateObstacle, .-updateObstacle
	.align	2
	.global	drawObstacle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawObstacle, %function
drawObstacle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #20]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #8
	bne	.L93
	ldr	r5, [r0, #40]
	cmp	r5, #0
	beq	.L94
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	str	r5, [sp]
	add	r0, r0, #8
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldr	r6, .L95
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r6
	str	r5, [sp]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	mov	r3, #1
	str	r3, [r4, #40]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	mov	r2, #0
	ldr	r3, [r0, #24]
	str	r2, [sp]
	add	r0, r0, #8
	ldr	r2, [r0, #20]
	ldr	r5, .L95
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #36]
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r2, [r4, #28]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	drawRect
	.size	drawObstacle, .-drawObstacle
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"GBA RUN\000"
	.text
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
	mov	r4, #0
	mov	r5, r4
	ldr	r6, .L103
	sub	sp, sp, #8
.L98:
	mov	r1, r4
	mov	r3, #2
	mov	r2, #70
	mov	r0, #80
	str	r5, [sp]
	add	r4, r4, #20
	mov	lr, pc
	bx	r6
	cmp	r4, #160
	bne	.L98
	ldr	r4, .L103+4
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #66
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #68
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #165
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #167
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #99
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #101
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #132
	str	r4, [sp]
	mov	lr, pc
	bx	r6
	str	r4, [sp]
	mov	r3, #130
	mov	r2, #1
	mov	r1, #30
	mov	r0, #134
	mov	lr, pc
	bx	r6
	ldr	r4, .L103+8
	add	r5, r4, #1312
	add	r5, r5, #8
.L99:
	mov	r0, r4
	add	r4, r4, #44
	bl	drawObstacle
	cmp	r4, r5
	bne	.L99
	ldr	r2, .L103+4
	mov	r3, #3
	str	r2, [sp]
	mov	r1, #27
	mov	r2, #102
	mov	r0, #66
	mov	lr, pc
	bx	r6
	ldr	r4, .L103+12
	mov	r3, #31744
	mov	r1, #10
	mov	r0, #95
	ldr	r2, .L103+16
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawPlayer
.L104:
	.align	2
.L103:
	.word	drawRect
	.word	32767
	.word	obstacles
	.word	drawString
	.word	.LC9
	.size	drawGame, .-drawGame
	.comm	highScore,4,4
	.comm	count,4,4
	.comm	spawnDelay,4,4
	.comm	healthIndicator,2,2
	.comm	time,4,4
	.comm	poweredDown,4,4
	.comm	poweredUp,4,4
	.comm	spawned,4,4
	.comm	score,4,4
	.comm	obstacles,1320,4
	.comm	player,40,4
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
