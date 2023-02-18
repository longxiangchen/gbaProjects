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
	.file	"boundingBox.c"
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L4
	ldr	r9, .L4+4
	ldr	r2, [r8]
	ldr	r3, [r9]
	mul	ip, r3, r2
	ldr	r4, .L4+8
	ldr	r5, .L4+12
	ldr	r1, [r4]
	ldr	r6, .L4+16
	sub	sp, sp, #12
	ldr	r0, [r5]
	ldr	lr, .L4+20
	str	r6, [sp]
	sub	r3, r3, r1
	ldr	r6, .L4+24
	ldr	r7, .L4+28
	sub	r3, r3, #2
	sub	r2, r2, r0
	str	ip, [lr]
	ldr	r10, .L4+32
	str	r3, [r6]
	sub	r2, r2, #2
	add	r0, r0, #2
	add	r1, r1, #2
	ldr	fp, .L4+36
	str	r2, [r7]
	mov	lr, pc
	bx	r10
	ldr	r0, [r5]
	ldr	r2, [r7]
	ldr	r1, [r4]
	mov	r3, #2
	str	fp, [sp]
	add	r0, r0, #2
	mov	lr, pc
	bx	r10
	ldr	r0, [r5]
	ldr	r2, [r7]
	ldr	r1, [r9]
	mov	r3, #2
	str	fp, [sp]
	add	r0, r0, #2
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	ldr	r0, [r5]
	ldr	r1, [r4]
	mov	r2, #2
	str	fp, [sp]
	add	r3, r3, #4
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	mov	r2, #2
	str	fp, [sp]
	ldr	r1, [r4]
	ldr	r0, [r8]
	add	r3, r3, #4
	mov	lr, pc
	bx	r10
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	rightBound
	.word	botBound
	.word	topBound
	.word	leftBound
	.word	15855
	.word	boxArea
	.word	boxHeight
	.word	boxWidth
	.word	drawRect
	.word	32767
	.size	boundingBox, .-boundingBox
	.comm	boxArea,4,4
	.comm	boxHeight,4,4
	.comm	boxWidth,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
