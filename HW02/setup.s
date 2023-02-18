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
	.file	"setup.c"
	.text
	.align	2
	.global	boundingBox
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	boundingBox, %function
boundingBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L4
	sub	sp, sp, #12
	ldr	r5, .L4+4
	ldr	r4, .L4+8
	str	r3, [sp]
	mov	r2, #180
	mov	r3, #120
	mov	r1, #20
	mov	r0, #30
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #180
	mov	r1, #18
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #180
	mov	r1, #140
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #124
	mov	r2, #2
	mov	r1, #18
	mov	r0, #28
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #124
	mov	r2, #2
	mov	r1, #18
	mov	r0, #210
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	15855
	.word	32767
	.word	drawRect
	.size	boundingBox, .-boundingBox
	.align	2
	.global	drawPlayerBox
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
	ldr	r0, .L8
	mov	r2, r3
	ldr	r1, [r0]
	ldr	r4, .L8+4
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.word	drawRect
	.size	drawPlayerBox, .-drawPlayerBox
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
	ldr	r2, .L25
	ldr	r3, .L25+4
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
	ldr	r3, .L25+8
	ldr	r0, .L25+12
	push	{r4, lr}
	ldr	r2, [r3, #8]
	ldr	lr, [r3, #4]
	ldr	r4, .L25+16
	ldr	ip, [r3]
	ldr	r1, [r0]
	add	r2, lr, r2
	str	lr, [r4]
	ldr	lr, .L25+20
	add	r1, ip, r1
	cmp	r2, #209
	str	r2, [r3, #4]
	str	ip, [lr]
	str	r1, [r3]
	bgt	.L24
	cmp	r1, #139
	ble	.L15
.L16:
	mvn	lr, #1
	mov	ip, #0
	str	lr, [r3, #8]
	str	ip, [r0]
.L15:
	cmp	r2, #28
	bgt	.L10
	moveq	r2, #1
	movne	r2, #0
	cmp	r1, #18
	movgt	r1, #0
	andle	r1, r2, #1
	mov	r2, #0
	cmp	r1, r2
	mvn	ip, #1
	movne	r1, #2
	str	r2, [r3, #8]
	str	ip, [r0]
	strne	r1, [r3, #8]
	strne	r2, [r0]
.L10:
	pop	{r4, lr}
	bx	lr
.L24:
	mov	lr, #0
	mov	ip, #2
	cmp	r1, #139
	str	lr, [r3, #8]
	str	ip, [r0]
	ble	.L10
	b	.L16
.L26:
	.align	2
.L25:
	.word	time
	.word	1431655766
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	prevPlayerX
	.word	prevPlayerY
	.size	updatePlayerBox, .-updatePlayerBox
	.global	player_Vy
	.global	player_Vx
	.global	playerY
	.global	playerX
	.comm	prevPlayerY,4,4
	.comm	prevPlayerX,4,4
	.comm	playerSize,4,4
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
	.word	28
	.type	player_Vx, %object
	.size	player_Vx, 4
player_Vx:
	.word	2
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	player_Vy, %object
	.size	player_Vy, 4
player_Vy:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
