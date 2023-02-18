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
	.file	"playerBox.c"
	.text
	.align	2
	.global	drawPlayerBox
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerBox, %function
drawPlayerBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #31
	mov	r3, #2
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	ldr	r0, .L4
	mov	r2, r3
	ldr	r1, [r0]
	ldr	r4, .L4+4
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+8
	ldr	r3, .L4+12
	ldr	r1, [r2]
	ldr	r0, [r3]
	mov	r2, #2
	ldr	r3, .L4+16
	ldr	r4, .L4+20
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	drawRect
	.word	prevPlayerY
	.word	prevPlayerX
	.word	32767
	.word	drawSquare
	.size	drawPlayerBox, .-drawPlayerBox
	.align	2
	.global	setBoundariesX
	.syntax unified
	.arm
	.fpu softvfp
	.type	setBoundariesX, %function
setBoundariesX:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	ldr	r1, .L9+4
	ldr	r2, [r3, #4]
	ldr	r1, [r1]
	cmp	r2, r1
	strlt	r2, [r3, #8]
	blt	.L8
	strgt	r2, [r3, #12]
.L8:
	mov	r2, #1
	ldr	r3, .L9+8
	strb	r2, [r3]
	bx	lr
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	ballX
	.word	.LANCHOR1
	.size	setBoundariesX, .-setBoundariesX
	.align	2
	.global	setBoundariesY
	.syntax unified
	.arm
	.fpu softvfp
	.type	setBoundariesY, %function
setBoundariesY:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L14
	ldr	r1, .L14+4
	ldr	r2, [r3]
	ldr	r1, [r1]
	cmp	r2, r1
	strlt	r2, [r3, #16]
	strge	r2, [r3, #20]
	mov	r2, #1
	ldr	r3, .L14+8
	strb	r2, [r3]
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	ballY
	.word	.LANCHOR1
	.size	setBoundariesY, .-setBoundariesY
	.align	2
	.global	checkBoundaries
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkBoundaries, %function
checkBoundaries:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L26
	push	{r4, r5, lr}
	ldr	lr, [ip, #4]
	cmp	lr, r0
	movge	r4, #2
	movge	r5, #0
	ldrge	r0, .L26+4
	strge	r4, [r0, #4]
	ldr	r0, [ip]
	strge	r5, [ip, #24]
	cmp	r0, r3
	mvnge	r5, #1
	movge	r4, #0
	ldrge	r3, .L26+4
	strge	r5, [ip, #24]
	strge	r4, [r3, #4]
	cmp	lr, r1
	bgt	.L16
	cmp	r0, r2
	cmple	lr, r1
	mvn	r1, #1
	ldr	r3, .L26+4
	mov	r2, #0
	str	r1, [r3, #4]
	moveq	r1, #2
	str	r2, [ip, #24]
	streq	r2, [r3, #4]
	streq	r1, [ip, #24]
.L16:
	pop	{r4, r5, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	checkBoundaries, .-checkBoundaries
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"player: (%d, %d)\000"
	.align	2
.LC1:
	.ascii	"Moving up\000"
	.align	2
.LC2:
	.ascii	"COLLIDED: (%d, %d)\000"
	.align	2
.LC3:
	.ascii	"stopped drawing up. top bound: %d player: (%d, %d)\000"
	.align	2
.LC4:
	.ascii	"moving down\000"
	.align	2
.LC5:
	.ascii	"stopped drawing down, player: (%d, %d)\000"
	.align	2
.LC6:
	.ascii	"moving right\000"
	.align	2
.LC7:
	.ascii	"done drawing right\000"
	.align	2
.LC8:
	.ascii	"moving left\000"
	.text
	.align	2
	.global	updatePlayerBox
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerBox, %function
updatePlayerBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L105
	ldrh	r3, [r6]
	ldr	r4, .L105+4
	tst	r3, #64
	ldm	r4, {r1, lr}
	sub	sp, sp, #16
	beq	.L86
	ldr	r3, .L105+8
	ldrh	r3, [r3, #48]
	ands	r7, r3, #64
	beq	.L84
.L86:
	ldr	r5, .L105+12
.L29:
	ldr	r7, [r5, #8]
	cmp	r7, #1
	beq	.L93
.L31:
	ldr	r3, [r4, #16]
	cmp	r3, r1
	beq	.L94
.L34:
	ldrh	r3, [r6]
	tst	r3, #128
	bne	.L65
.L37:
	ldr	r3, [r5, #8]
	cmp	r3, #2
	beq	.L95
.L39:
	ldr	r3, [r4, #20]
	cmp	r3, r1
	beq	.L96
.L42:
	ldrh	r3, [r6]
	tst	r3, #16
	bne	.L64
.L45:
	ldr	r3, [r5, #8]
	cmp	r3, #3
	beq	.L97
.L46:
	ldr	r0, [r4, #12]
	cmp	r0, lr
	beq	.L98
.L49:
	ldrh	r3, [r6]
	tst	r3, #32
	bne	.L63
.L52:
	ldr	r3, [r5, #8]
	cmp	r3, #4
	beq	.L99
.L53:
	ldr	r1, [r4, #8]
	cmp	r1, lr
	beq	.L56
.L92:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
.L57:
	ldr	r6, .L105+16
	ldr	ip, .L105+20
	ldr	r6, [r6]
	smull	r7, ip, r6, ip
	sub	ip, ip, r6, asr #31
	add	ip, ip, ip, lsl #1
	sub	r7, r6, ip
	rsbs	ip, r7, #0
	adc	ip, ip, r7
	cmp	r6, #0
	moveq	ip, #0
	cmp	ip, #0
	bne	.L100
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	checkBoundaries
.L97:
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L101
	ldrh	r3, [r6]
	tst	r3, #32
	ldr	r0, [r4, #12]
	beq	.L53
.L63:
	ldr	r3, .L105+8
	ldrh	r3, [r3, #48]
	ands	r6, r3, #32
	bne	.L52
	sub	r3, r0, #1
	cmp	lr, r3
	blt	.L52
	mov	r2, #4
	ldr	r3, .L105+24
	ldr	r0, .L105+28
	strb	r6, [r5, #12]
	str	r2, [r5, #8]
	mov	lr, pc
	bx	r3
	mvn	r3, #1
	str	r6, [r5, #4]
	str	r3, [r4, #24]
	ldr	r0, [r4, #12]
	ldr	lr, [r4, #4]
	b	.L52
.L95:
	ldrb	r2, [r5, #12]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L102
	ldrh	r3, [r6]
	tst	r3, #16
	beq	.L46
.L64:
	ldr	r3, .L105+8
	ldrh	r3, [r3, #48]
	ands	r7, r3, #16
	bne	.L45
	ldr	r3, [r4, #8]
	cmp	r3, lr
	bne	.L45
	mov	r2, #3
	ldr	r3, .L105+24
	ldr	r0, .L105+32
	strb	r7, [r5, #12]
	str	r2, [r5, #8]
	mov	lr, pc
	bx	r3
	mov	r3, #2
	str	r7, [r5, #4]
	str	r3, [r4, #24]
	ldr	lr, [r4, #4]
	b	.L45
.L93:
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L103
	ldrh	r3, [r6]
	tst	r3, #128
	beq	.L39
.L65:
	ldr	r3, .L105+8
	ldrh	r3, [r3, #48]
	ands	r7, r3, #128
	bne	.L37
	mov	r2, r1
	ldr	r0, .L105+36
	mov	r1, lr
	ldr	r8, .L105+24
	mov	lr, pc
	bx	r8
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	sub	r3, r3, #2
	cmp	r3, r1
	bgt	.L38
	ldr	lr, [r4, #4]
	b	.L37
.L99:
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	cmp	r3, #0
	ldrne	r1, [r4, #8]
	bne	.L92
	mov	r3, #2
	sub	r0, r0, lr
	add	r0, r0, r3
	str	r0, [sp, #8]
	str	lr, [sp]
	str	r3, [sp, #12]
	ldr	ip, [r4]
	ldr	r7, .L105+40
	ldr	r6, .L105+44
	ldr	r1, [r7]
	ldr	r0, [r6]
	mov	r2, r3
	str	ip, [sp, #4]
	ldr	r8, .L105+48
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L55
.L90:
	ldr	lr, [r4, #4]
	ldr	r1, [r4, #8]
	cmp	r1, lr
	ldr	r0, [r4, #12]
	bne	.L92
.L56:
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L91
	ldr	r2, [r5, #8]
	cmp	r2, #4
	bne	.L91
	mvn	ip, #1
	mov	r1, #1
	str	ip, [r5, #4]
	mov	ip, #1
	ldr	r2, .L105+40
	ldr	r6, [r2]
	ldr	r2, [r4]
	cmp	r2, r6
	str	r3, [r4, #24]
	strb	r1, [r5, #12]
	movge	r3, r2
	strge	r2, [r4, #20]
	mov	r1, lr
	strlt	r2, [r4, #16]
	ldrlt	r3, [r4, #20]
	ldrge	r2, [r4, #16]
	strb	ip, [r5]
	b	.L57
.L96:
	ldrb	r7, [r5, #12]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L42
	ldr	r3, [r5, #8]
	cmp	r3, #2
	bne	.L42
	mov	r2, r1
	ldr	r3, .L105+24
	mov	r1, lr
	ldr	r0, .L105+52
	mov	lr, pc
	bx	r3
	mvn	r2, #1
	mov	r3, #1
	ldr	r1, .L105+44
	ldr	lr, [r4, #4]
	ldr	r1, [r1]
	cmp	lr, r1
	str	r7, [r5, #4]
	str	r2, [r4, #24]
	strb	r3, [r5, #12]
	strlt	lr, [r4, #8]
	blt	.L44
	strgt	lr, [r4, #12]
.L44:
	mov	r3, #1
	strb	r3, [r5]
	b	.L42
.L91:
	add	r2, r4, #16
	mov	r1, lr
	ldm	r2, {r2, r3}
	b	.L57
.L94:
	ldrb	r7, [r5, #12]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L34
	ldr	r8, [r5, #8]
	cmp	r8, #1
	bne	.L34
	mov	r2, lr
	mov	r3, r1
	ldr	r0, .L105+56
	ldr	r9, .L105+24
	mov	lr, pc
	bx	r9
	mov	r3, #2
	ldr	r2, .L105+44
	ldr	lr, [r4, #4]
	ldr	r2, [r2]
	cmp	lr, r2
	str	r7, [r5, #4]
	strb	r8, [r5, #12]
	str	r3, [r4, #24]
	strlt	lr, [r4, #8]
	blt	.L36
	strgt	lr, [r4, #12]
.L36:
	mov	r3, #1
	ldr	r1, [r4]
	strb	r3, [r5]
	b	.L34
.L98:
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L67
	ldr	r2, [r5, #8]
	cmp	r2, #3
	beq	.L104
.L67:
	mov	r0, lr
	b	.L49
.L100:
	ldr	r6, [r4]
	ldr	r5, [r5, #4]
	ldr	ip, [r4, #24]
	add	r5, r5, r6
	add	ip, ip, lr
	str	r5, [r4]
	str	ip, [r4, #4]
	ldr	r5, .L105+60
	ldr	ip, .L105+64
	str	r6, [r5]
	str	lr, [ip]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	checkBoundaries
.L84:
	mov	r2, r1
	ldr	r0, .L105+36
	mov	r1, lr
	ldr	r8, .L105+24
	mov	lr, pc
	bx	r8
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	add	r3, r3, #2
	cmp	r3, r1
	blt	.L30
	ldr	lr, [r4, #4]
	b	.L86
.L102:
	ldr	r2, [r4, #16]
	sub	r1, r1, r2
	sub	r1, r1, #2
	add	r2, r2, #2
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	str	lr, [sp]
	str	r1, [sp, #12]
	ldr	r7, .L105+40
	ldr	r8, .L105+44
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r8]
	ldr	r9, .L105+48
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L41
.L88:
	ldm	r4, {r1, lr}
	b	.L39
.L101:
	mov	r3, #2
	ldr	r2, [r4, #8]
	sub	lr, lr, r2
	str	r2, [sp]
	str	lr, [sp, #8]
	str	r3, [sp, #12]
	ldr	ip, [r4]
	ldr	r8, .L105+40
	ldr	r7, .L105+44
	ldr	r1, [r8]
	ldr	r0, [r7]
	mov	r2, r3
	str	ip, [sp, #4]
	ldr	r9, .L105+48
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L48
.L89:
	ldr	lr, [r4, #4]
	b	.L46
.L103:
	mov	r3, #2
	ldr	r2, [r4, #20]
	sub	r2, r2, r1
	str	r2, [sp, #12]
	str	r1, [sp, #4]
	str	lr, [sp]
	str	r3, [sp, #8]
	ldr	r9, .L105+40
	ldr	r8, .L105+44
	mov	r2, r3
	ldr	r1, [r9]
	ldr	r0, [r8]
	ldr	r10, .L105+48
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L33
.L87:
	ldm	r4, {r1, lr}
	b	.L31
.L38:
	mov	r9, #2
	ldr	r0, .L105+68
	strb	r7, [r5, #12]
	str	r9, [r5, #8]
	mov	lr, pc
	bx	r8
	str	r9, [r5, #4]
	str	r7, [r4, #24]
	ldm	r4, {r1, lr}
	b	.L37
.L30:
	mov	r3, #1
	ldr	r5, .L105+12
	ldr	r0, .L105+72
	str	r3, [r5, #8]
	strb	r7, [r5, #12]
	mov	lr, pc
	bx	r8
	mvn	r3, #1
	str	r7, [r4, #24]
	str	r3, [r5, #4]
	ldm	r4, {r1, lr}
	b	.L29
.L104:
	mov	r2, #2
	str	r3, [r4, #24]
	ldr	r0, .L105+76
	ldr	r3, .L105+24
	str	r2, [r5, #4]
	mov	lr, pc
	bx	r3
	ldr	r1, .L105+40
	ldr	r3, [r4]
	ldr	r1, [r1]
	cmp	r3, r1
	mov	r2, #1
	strlt	r3, [r4, #16]
	strge	r3, [r4, #20]
	mov	r3, #1
	strb	r2, [r5, #12]
	ldr	r0, [r4, #12]
	strb	r3, [r5]
	ldr	lr, [r4, #4]
	b	.L49
.L33:
	ldr	r2, [r9]
	ldr	r1, [r8]
	ldr	r3, .L105+24
	ldr	r0, .L105+80
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #8]
	add	r3, r3, #2
	ldr	r2, .L105+84
	str	r3, [r4]
	strb	r7, [r5, #12]
	str	r1, [r4, #4]
	mov	lr, pc
	bx	r2
	ldr	r3, [r4, #28]
	ldr	r2, .L105+88
	sub	r3, r3, #1
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r2
	b	.L87
.L48:
	ldr	r3, .L105+84
	mov	lr, pc
	bx	r3
	ldr	r2, [r8]
	ldr	r1, [r7]
	ldr	r3, .L105+24
	ldr	r0, .L105+80
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #8]
	add	r2, r2, #2
	sub	r3, r3, #1
	ldr	r1, .L105+88
	str	r2, [r4]
	str	r3, [r4, #28]
	strb	ip, [r5, #12]
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r1
	b	.L89
.L41:
	ldr	r3, .L105+84
	mov	lr, pc
	bx	r3
	ldr	r2, [r7]
	ldr	r1, [r8]
	ldr	r3, .L105+24
	ldr	r0, .L105+80
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #8]
	add	r2, r2, #2
	sub	r3, r3, #1
	ldr	r1, .L105+88
	str	r2, [r4]
	str	r3, [r4, #28]
	strb	ip, [r5, #12]
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r1
	b	.L88
.L55:
	ldr	r3, .L105+84
	mov	lr, pc
	bx	r3
	ldr	r2, [r7]
	ldr	r1, [r6]
	ldr	r3, .L105+24
	ldr	r0, .L105+80
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #16]
	ldr	r0, [r4, #8]
	add	r2, r2, #2
	sub	r3, r3, #1
	ldr	r1, .L105+88
	str	r2, [r4]
	str	r3, [r4, #28]
	strb	ip, [r5, #12]
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r1
	b	.L90
.L106:
	.align	2
.L105:
	.word	oldButtons
	.word	.LANCHOR0
	.word	67109120
	.word	.LANCHOR1
	.word	time
	.word	1431655766
	.word	mgba_printf
	.word	.LC8
	.word	.LC6
	.word	.LC0
	.word	ballY
	.word	ballX
	.word	collision
	.word	.LC5
	.word	.LC3
	.word	prevPlayerY
	.word	prevPlayerX
	.word	.LC4
	.word	.LC1
	.word	.LC7
	.word	.LC2
	.word	boundingBox
	.word	drawLives
	.size	updatePlayerBox, .-updatePlayerBox
	.global	initBB
	.global	initTB
	.global	initLB
	.global	initRB
	.global	initP_Vy
	.global	initP_Vx
	.global	initPy
	.global	initPx
	.global	erase
	.global	dir
	.global	doneDrawing
	.global	botBound
	.global	topBound
	.global	leftBound
	.global	rightBound
	.global	player_Vy
	.global	player_Vx
	.global	playerY
	.global	playerX
	.comm	prevPlayerY,4,4
	.comm	prevPlayerX,4,4
	.comm	playerSize,4,4
	.global	lives
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	playerY, %object
	.size	playerY, 4
playerY:
	.word	18
	.type	playerX, %object
	.size	playerX, 4
playerX:
	.word	50
	.type	leftBound, %object
	.size	leftBound, 4
leftBound:
	.word	50
	.type	rightBound, %object
	.size	rightBound, 4
rightBound:
	.word	180
	.type	topBound, %object
	.size	topBound, 4
topBound:
	.word	18
	.type	botBound, %object
	.size	botBound, 4
botBound:
	.word	140
	.type	player_Vx, %object
	.size	player_Vx, 4
player_Vx:
	.word	2
	.type	lives, %object
	.size	lives, 4
lives:
	.word	3
	.type	initBB, %object
	.size	initBB, 4
initBB:
	.word	140
	.type	initTB, %object
	.size	initTB, 4
initTB:
	.word	18
	.type	initLB, %object
	.size	initLB, 4
initLB:
	.word	50
	.type	initRB, %object
	.size	initRB, 4
initRB:
	.word	180
	.type	initP_Vx, %object
	.size	initP_Vx, 4
initP_Vx:
	.word	2
	.type	initPy, %object
	.size	initPy, 4
initPy:
	.word	18
	.type	initPx, %object
	.size	initPx, 4
initPx:
	.word	50
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	erase, %object
	.size	erase, 1
erase:
	.space	1
	.space	3
	.type	player_Vy, %object
	.size	player_Vy, 4
player_Vy:
	.space	4
	.type	dir, %object
	.size	dir, 4
dir:
	.space	4
	.type	doneDrawing, %object
	.size	doneDrawing, 1
doneDrawing:
	.space	1
	.space	3
	.type	initP_Vy, %object
	.size	initP_Vy, 4
initP_Vy:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
