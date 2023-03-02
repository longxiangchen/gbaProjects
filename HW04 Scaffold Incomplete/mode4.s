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
	.file	"mode4.c"
	.text
	.align	2
	.global	setPixel4
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	rsb	r1, r1, r1, lsl #4
	ldr	ip, [r3]
	add	r1, r0, r1, lsl #4
	bic	r1, r1, #1
	ldrh	r3, [ip, r1]
	tst	r0, #1
	andne	r3, r3, #255
	biceq	r3, r3, #255
	orrne	r3, r3, r2, lsl #8
	orreq	r3, r3, r2
	strh	r3, [ip, r1]	@ movhi
	bx	lr
.L6:
	.align	2
.L5:
	.word	videoBuffer
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	ldrb	ip, [sp, #64]	@ zero_extendqisi2
	ldrb	lr, [sp, #64]	@ zero_extendqisi2
	subs	r7, r3, #0
	orr	ip, ip, lr, lsl #8
	strh	ip, [sp, #22]	@ movhi
	ble	.L7
	mov	r6, r2
	mov	fp, r0
	add	r3, r6, r6, lsr #31
	asr	r2, r2, #1
	asr	r3, r3, #1
	rsb	r1, r1, r1, lsl #4
	sub	r0, r2, #1
	orr	r3, r3, #16777216
	str	r3, [sp, #8]
	add	r4, fp, r1, lsl #4
	orr	r2, r2, #16777216
	orr	r1, r0, #16777216
	sub	r3, r6, #1
	mov	r5, #0
	ldr	r10, .L26
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	and	r9, fp, #1
	and	r8, r6, #1
	b	.L19
.L24:
	cmp	r8, #0
	beq	.L23
	cmp	r6, #1
	ldr	r2, [r10]
	ble	.L13
	add	r3, r4, r4, lsr #31
	bic	r3, r3, #1
	add	r2, r2, r3
	mov	r0, #3
	ldr	r3, [sp, #4]
	ldr	ip, .L26+4
	add	r1, sp, #22
	mov	lr, pc
	bx	ip
	ldr	r2, [r10]
.L13:
	ldr	r3, [sp]
	add	r1, r3, r4
	bic	r1, r1, #1
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	add	ip, fp, r6
	ldrh	r3, [r2, r1]
	tst	ip, #1
	and	r0, r0, #255
	andeq	r3, r3, #255
	bicne	r3, r3, #255
	orreq	r3, r3, r0, lsl #8
	orrne	r3, r3, r0
	strh	r3, [r2, r1]	@ movhi
.L11:
	add	r5, r5, #1
	cmp	r7, r5
	add	r4, r4, #240
	beq	.L7
.L19:
	cmp	r9, #0
	beq	.L24
	ldr	r3, [r10]
	bic	r2, r4, #1
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	ldrh	r1, [r3, r2]
	cmp	r8, #0
	and	r1, r1, #255
	beq	.L15
	orr	r1, r1, r0, lsl #8
	cmp	r6, #1
	strh	r1, [r3, r2]	@ movhi
	ble	.L11
	add	r2, r4, #1
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r2, r3, r2
	mov	r0, #3
	ldr	r3, [sp, #4]
	ldr	ip, .L26+4
	add	r1, sp, #22
	add	r5, r5, #1
	mov	lr, pc
	bx	ip
	cmp	r7, r5
	add	r4, r4, #240
	bne	.L19
.L7:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L15:
	orr	r1, r1, r0, lsl #8
	cmp	r6, #2
	strh	r1, [r3, r2]	@ movhi
	bgt	.L25
.L17:
	ldr	r2, [sp]
	add	r1, r2, r4
	bic	r1, r1, #1
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	add	ip, fp, r6
	ldrh	r2, [r3, r1]
	tst	ip, #1
	and	r0, r0, #255
	andeq	r2, r2, #255
	bicne	r2, r2, #255
	orreq	r2, r2, r0, lsl #8
	orrne	r2, r2, r0
	strh	r2, [r3, r1]	@ movhi
	b	.L11
.L23:
	ldr	r2, [r10]
	add	r3, r4, r4, lsr #31
	bic	r3, r3, #1
	add	r2, r2, r3
	mov	r0, #3
	ldr	r3, [sp, #8]
	ldr	ip, .L26+4
	add	r1, sp, #22
	mov	lr, pc
	bx	ip
	b	.L11
.L25:
	add	r2, r4, #1
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r2, r3, r2
	mov	r0, #3
	ldr	r3, [sp, #12]
	ldr	ip, .L26+4
	add	r1, sp, #22
	mov	lr, pc
	bx	ip
	ldr	r3, [r10]
	b	.L17
.L27:
	.align	2
.L26:
	.word	videoBuffer
	.word	DMANow
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #0
	sub	sp, sp, #20
	strb	r0, [sp, #7]
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsl	r3, r3, #16
	ldrb	ip, [sp, #7]	@ zero_extendqisi2
	ldr	r1, .L30
	orr	r3, r3, r0, lsl #24
	ldr	r2, .L30+4
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldr	r2, [r2]
	orr	r3, r3, r0
	ldr	r0, [r1]
	ldr	r1, .L30+8
	orr	r3, r3, ip, lsl #8
	add	ip, sp, #12
	str	r3, [sp, #12]
	str	lr, [r2, #44]
	str	ip, [r2, #36]
	str	r0, [r2, #40]
	str	r1, [r2, #44]
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	videoBuffer
	.word	dma
	.word	-2063587968
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	bxle	lr
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r1, r3
	add	r2, r2, r2, lsr #31
	rsb	r6, r6, r6, lsl #4
	rsb	r1, r1, r1, lsl #4
	ldr	r5, [sp, #32]
	ldr	r9, .L40
	ldr	r8, .L40+4
	add	r6, r0, r6, lsl #4
	add	r4, r0, r1, lsl #4
	asr	r10, r2, #1
	bic	r7, r2, #1
.L34:
	ldr	r3, [r9]
	add	r2, r4, r4, lsr #31
	bic	r2, r2, #1
	mov	r1, r5
	add	r2, r3, r2
	mov	r0, #3
	mov	r3, r10
	add	r4, r4, #240
	mov	lr, pc
	bx	r8
	cmp	r6, r4
	add	r5, r5, r7
	bne	.L34
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	videoBuffer
	.word	DMANow
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L44
	mov	r1, r0
	ldr	r2, [r3]
	ldr	r4, .L44+4
	mov	r3, #19200
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	videoBuffer
	.word	DMANow
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r1, [r3]
	tst	r1, #16
	ldr	r2, .L49
	moveq	r2, #100663296
	ldr	r1, .L49+4
	str	r2, [r1]
	ldrh	r2, [r3]
	eor	r2, r2, #16
	strh	r2, [r3]	@ movhi
	bx	lr
.L50:
	.align	2
.L49:
	.word	100704256
	.word	videoBuffer
	.size	flipPage, .-flipPage
	.align	2
	.global	drawChar4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChar4, %function
drawChar4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L62
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L62+4
	rsb	r1, r1, r1, lsl #4
	add	r2, r2, r2, lsl #1
	lsl	r7, r3, #24
	ldr	r5, [ip]
	lsl	r9, r1, #4
	add	r4, r4, r2, lsl #4
	add	r10, r0, #6
	asr	r7, r7, #16
	and	r8, r3, #255
.L52:
	sub	r3, r4, #48
	add	ip, r9, r0
	and	r6, r0, #1
.L55:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #0
	bic	lr, ip, #1
	beq	.L53
	ldrh	r1, [r5, lr]
	and	r2, r1, #255
	cmp	r6, #0
	orr	r2, r7, r2
	biceq	r1, r1, #255
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	orreq	r1, r8, r1
	strhne	r2, [r5, lr]	@ movhi
	strheq	r1, [r5, lr]	@ movhi
.L53:
	add	r3, r3, #6
	cmp	r3, r4
	add	ip, ip, #240
	bne	.L55
	add	r0, r0, #1
	cmp	r0, r10
	add	r4, r3, #1
	bne	.L52
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	videoBuffer
	.word	fontdata_6x8+48
	.size	drawChar4, .-drawChar4
	.align	2
	.global	drawString4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawString4, %function
drawString4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L64
	mov	r4, r0
	mov	r7, r1
	mov	r6, r3
.L66:
	mov	r0, r4
	mov	r3, r6
	mov	r1, r7
	bl	drawChar4
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	add	r4, r4, #6
	bne	.L66
.L64:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	drawString4, .-drawString4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
