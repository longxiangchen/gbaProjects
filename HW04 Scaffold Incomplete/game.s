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
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #100
	mov	lr, #10
	mov	ip, #12
	mov	r0, #16
	mov	r1, #3
	ldr	r3, .L4
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #28]
	str	r0, [r3, #24]
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #12
	mov	ip, #2
	mov	r0, #252
	ldr	r3, .L10
	add	r1, r3, #2560
.L7:
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #24]
	strh	r0, [r3, #28]	@ movhi
	add	r3, r3, #32
	cmp	r3, r1
	bne	.L7
	ldr	lr, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	initVillain
	.syntax unified
	.arm
	.fpu softvfp
	.type	initVillain, %function
initVillain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #100
	mov	ip, #195
	mov	r0, #0
	mov	r1, #28
	mov	r2, #24
	push	{r4, lr}
	ldr	r4, .L16
	str	r3, [r4, #4]
	ldr	r3, .L16+4
	str	ip, [r4]
	str	r0, [r4, #8]
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	mov	lr, pc
	bx	r3
	tst	r0, #1
	mvneq	r3, #1
	movne	r3, #2
	str	r3, [r4, #8]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	eggman
	.word	rand
	.size	initVillain, .-initVillain
	.align	2
	.global	initEscape
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEscape, %function
initEscape:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	mov	lr, #220
	mov	r1, #10
	mov	ip, #254
	ldr	r3, .L20+4
	smull	r4, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #1
	ldr	r3, .L20+8
	add	r0, r0, #1
	str	lr, [r3]
	str	r0, [r3, #4]
	strh	ip, [r3, #16]	@ movhi
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	rand
	.word	458129845
	.word	escape
	.size	initEscape, .-initEscape
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	bl	initEscape
	mov	lr, #12
	mov	r3, #0
	mov	r8, #100
	mov	r7, #10
	mov	r6, #16
	mov	r5, #3
	mov	ip, lr
	mov	r0, #2
	mov	r1, #252
	ldr	r2, .L28
	mov	r4, r3
	str	r3, [r2, #20]
	str	r3, [r2, #16]
	ldr	r3, .L28+4
	stm	r2, {r7, r8}
	str	r6, [r2, #24]
	str	r5, [r2, #32]
	str	lr, [r2, #28]
	add	r2, r3, #2560
.L23:
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r4, [r3, #24]
	strh	r1, [r3, #28]	@ movhi
	add	r3, r3, #32
	cmp	r3, r2
	bne	.L23
	mov	r5, sp
	bl	initVillain
	ldr	r3, .L28+8
	ldm	r3, {r0, r1, r2, r3}
	ldr	r6, .L28+12
	stm	r5, {r0, r1, r2, r3}
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+16
	mov	lr, pc
	bx	r6
	mov	r2, r5
	ldr	r3, .L28+20
	ldr	r1, .L28+24
	str	r4, [r3]
	str	r4, [r1]
	ldr	r3, .L28+28
	ldr	r0, .L28+32
.L24:
	ldrh	r1, [r2], #2
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r0
	bne	.L24
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	player
	.word	bullets
	.word	.LANCHOR0
	.word	DMANow
	.word	sonicPal
	.word	time
	.word	score
	.word	83886576
	.word	83886592
	.size	initGame, .-initGame
	.align	2
	.global	drawEscape
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEscape, %function
drawEscape:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L32
	ldrb	r2, [r0, #16]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldr	r3, [r0, #12]
	str	r2, [sp]
	ldr	r4, .L32+4
	ldm	r0, {r0, r1, r2}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	escape
	.word	drawRect4
	.size	drawEscape, .-drawEscape
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
	push	{r4, r5, lr}
	ldr	r4, .L51
	ldr	r1, [r4, #4]
	add	r2, r4, #24
	cmp	r1, #3
	ldr	r0, [r4]
	ldm	r2, {r2, r3}
	sub	sp, sp, #20
	ble	.L35
	add	ip, r0, r2
	cmp	ip, #238
	ble	.L49
.L35:
	mov	ip, #0
	str	ip, [r4, #20]
	str	ip, [r4, #16]
.L36:
	ldr	ip, .L51+4
	ldr	lr, [ip, #12]
	ldr	r5, [ip, #16]
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r5, .L51+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L37
	ldr	r2, .L51+12
	ldr	r3, [r4, #32]
	ldrh	r1, [r2]
	sub	r3, r3, #1
	tst	r1, #64
	str	r3, [r4, #32]
	mov	r2, #80
	mov	r3, #10
	bne	.L39
	mov	r2, #78
.L38:
	mvn	r0, #1
	ldr	r1, [r4, #16]
	str	r0, [r4, #20]
	add	r3, r3, r1
.L40:
	str	r3, [r4]
	str	r2, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L37:
	ldr	r3, .L51+12
	ldrh	r1, [r3]
	tst	r1, #64
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	bne	.L39
	cmp	r2, #4
	subgt	r2, r2, #2
	bgt	.L38
.L39:
	tst	r1, #128
	bne	.L41
	ldr	r0, [r4, #28]
	add	r0, r2, r0
	cmp	r0, #154
	bgt	.L41
	mov	r0, #2
	ldr	r1, [r4, #16]
	str	r0, [r4, #20]
	add	r2, r2, r0
	add	r3, r3, r1
	b	.L40
.L41:
	tst	r1, #16
	beq	.L50
.L42:
	tst	r1, #32
	bne	.L43
	cmp	r3, #4
	ble	.L43
	mvn	r0, #1
	ldr	r1, [r4, #20]
	str	r0, [r4, #16]
	add	r3, r3, r0
	add	r2, r2, r1
	b	.L40
.L50:
	ldr	r0, [r4, #24]
	add	r0, r3, r0
	cmp	r0, #234
	bgt	.L42
	mov	r0, #2
	ldr	r1, [r4, #20]
	str	r0, [r4, #16]
	add	r3, r3, r0
	add	r2, r2, r1
	b	.L40
.L49:
	cmp	r0, #1
	movgt	ip, #0
	movle	ip, #1
	add	lr, r1, r3
	cmp	lr, #157
	orrgt	ip, ip, #1
	cmp	ip, #0
	bne	.L35
	b	.L36
.L43:
	mov	r1, #0
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	b	.L40
.L52:
	.align	2
.L51:
	.word	player
	.word	eggman
	.word	collision
	.word	buttons
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateVillain
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateVillain, %function
updateVillain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L64
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+4
	smull	r1, r2, r3, r0
	ldr	r1, .L64+8
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	ldr	ip, [r1, #12]
	ldr	r2, [r1, #4]
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	ip, r2, ip
	sub	r0, r0, r3, lsl #1
	cmp	ip, #150
	add	r0, r0, #1
	ble	.L54
	cmp	r0, #10
	moveq	r3, #3
	mvnne	r3, #2
	str	r3, [r1, #8]
.L56:
	cmp	r0, #5
	rsbeq	r3, r3, #0
	add	r2, r2, r3
	streq	r3, [r1, #8]
	str	r2, [r1, #4]
	pop	{r4, lr}
	bx	lr
.L54:
	cmp	r2, #9
	bgt	.L63
	cmp	r0, #10
	mvneq	r3, #2
	movne	r3, #3
	str	r3, [r1, #8]
	b	.L56
.L63:
	ldr	r3, [r1, #8]
	b	.L56
.L65:
	.align	2
.L64:
	.word	rand
	.word	1374389535
	.word	eggman
	.size	updateVillain, .-updateVillain
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
	push	{r4, lr}
	ldr	r0, .L68
	ldr	ip, .L68+4
	sub	sp, sp, #8
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L68+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	player
	.word	sonicBitmap
	.word	drawImage4
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawVillain
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVillain, %function
drawVillain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #252
	push	{r4, lr}
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r0, .L72
	ldr	r4, .L72+4
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	eggman
	.word	drawRect4
	.size	drawVillain, .-drawVillain
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
	ldr	r4, .L83
	ldr	r3, .L83+4
	sub	sp, sp, #8
	mov	r0, #251
	mov	lr, pc
	bx	r3
	ldr	r6, .L83+8
	bl	drawEscape
	add	r5, r4, #2560
	bl	drawPlayer
	bl	drawVillain
	b	.L76
.L75:
	add	r4, r4, #32
	cmp	r4, r5
	beq	.L82
.L76:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L75
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldm	r4, {r0, r1}
	ldr	r2, [r4, #16]
	add	r4, r4, #32
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L76
.L82:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	bullets
	.word	fillScreen4
	.word	drawRect4
	.size	drawGame, .-drawGame
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #24]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	ldr	r0, [r0]
	bne	.L95
.L86:
	ldr	r3, [r4, #8]
	add	r3, r3, r0
	str	r3, [r4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	ldr	r5, .L96
	add	r1, r5, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	r6, .L96+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L87
	mov	r0, #10
	mov	r1, #80
	mov	r2, #0
	ldr	r3, [r5, #32]
	stm	r5, {r0, r1}
	sub	r3, r3, #1
	str	r3, [r5, #32]
	str	r2, [r4, #24]
.L87:
	ldr	r0, [r4]
	cmp	r0, #9
	movle	r3, #0
	strle	r3, [r4, #24]
	b	.L86
.L97:
	.align	2
.L96:
	.word	player
	.word	collision
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldrb	r2, [r0, #28]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r4, .L107
	ldr	r2, [r0, #16]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L108:
	.align	2
.L107:
	.word	drawRect4
	.size	drawBullet, .-drawBullet
	.align	2
	.global	newBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	newBullet, %function
newBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r1, .L119
.L112:
	ldr	r2, [r1, r3, lsl #5]
	cmp	r2, #0
	lsl	r2, r3, #5
	bne	.L110
	push	{r4, r5, lr}
	mov	r4, #1
	mvn	r5, #1
	ldr	ip, .L119+4
	ldr	r1, [ip, #12]
	ldr	lr, .L119+8
	ldr	r0, [ip, #4]
	add	r1, r1, r1, lsr #31
	ldr	ip, [ip]
	add	r2, lr, r2
	add	r1, r0, r1, asr r4
	str	ip, [lr, r3, lsl #5]
	str	r5, [r2, #8]
	str	r4, [r2, #24]
	str	r1, [r2, #4]
	pop	{r4, r5, lr}
	bx	lr
.L110:
	add	r3, r3, #1
	cmp	r3, #80
	bne	.L112
	bx	lr
.L120:
	.align	2
.L119:
	.word	bullets+24
	.word	eggman
	.word	bullets
	.size	newBullet, .-newBullet
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L128
	ldr	r6, .L128+4
	ldr	r2, [r4]
	ldr	r3, [r6]
	add	r2, r2, #1
	add	r3, r3, #1
	str	r3, [r6]
	str	r2, [r4]
	bl	updatePlayer
	bl	updateVillain
	ldr	r3, [r4]
	cmp	r3, #11
	bgt	.L127
.L122:
	ldr	r4, .L128+8
	add	r5, r4, #2560
.L123:
	mov	r0, r4
	add	r4, r4, #32
	bl	updateBullet
	cmp	r4, r5
	bne	.L123
	ldr	r3, .L128+12
	ldr	r2, [r6]
	ldr	r1, [r3]
	cmp	r2, r1
	strgt	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	bl	newBullet
	mov	r1, #0
	ldr	r2, .L128+16
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4]
	b	.L122
.L129:
	.align	2
.L128:
	.word	time
	.word	score
	.word	bullets
	.word	highScore
	.word	count
	.size	updateGame, .-updateGame
	.comm	count,4,4
	.comm	highScore,4,4
	.comm	time,4,4
	.comm	score,4,4
	.comm	escape,20,4
	.comm	bullets,2560,4
	.comm	eggman,20,4
	.comm	player,36,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.short	0
	.short	3173
	.short	9522
	.short	32690
	.short	1626
	.short	5322
	.short	10583
	.short	26427
	.ident	"GCC: (devkitARM release 53) 9.1.0"
