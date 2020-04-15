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
	.file	"gooseLib.c"
	.text
	.align	2
	.global	initGoose
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGoose, %function
initGoose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #0
	mov	r2, #1
	mov	lr, #64
	mov	r0, #32
	mov	ip, #104
	ldr	r3, .L4
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	r1, [r3, #52]
	str	r2, [r3, #28]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	goose
	.size	initGoose, .-initGoose
	.align	2
	.global	updateGoose
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGoose, %function
updateGoose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r3, .L54
	ldrh	r2, [r3, #48]
	ands	r2, r2, #512
	movne	r2, #5
	ldr	r3, .L54+4
	push	{r4, r5, r6, r7, r8, lr}
	str	r1, [r3, #32]
	movne	r1, #1
	streq	r2, [r3, #28]
	strne	r2, [r3, #60]
	ldr	r2, .L54
	ldrh	r2, [r2, #48]
	ldr	lr, .L54+8
	strne	r1, [r3, #28]
	tst	r2, #64
	ldr	ip, [lr]
	ldm	r3, {r1, r2}
	bne	.L9
	cmn	r1, #3
	bge	.L52
.L9:
	ldr	r0, .L54
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L12
	ldr	r4, [r3, #20]
	rsb	r0, r4, #256
	cmp	r0, r1
	bgt	.L53
.L12:
	ldr	r0, .L54
	ldrh	r0, [r0, #48]
	ldr	r4, .L54+12
	ands	r0, r0, #32
	ldr	lr, [r4]
	bne	.L15
	cmp	r2, #1
	ble	.L15
	ldr	r5, [r3, #48]
	sub	r5, r2, r5
	ldr	r7, .L54+16
	add	r6, r5, r1, lsl #10
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	beq	.L15
	ldr	r6, [r3, #20]
	add	r6, r1, r6
	sub	r6, r6, #1
	add	r6, r5, r6, lsl #10
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	beq	.L15
	mov	r2, #1
	ldr	r6, [r3, #28]
	cmp	r6, #0
	str	r0, [r3, #40]
	moveq	r0, #14
	str	r2, [r3, #32]
	mvneq	r2, #0
	movne	r2, #8
	streq	r0, [r3, #60]
	ldr	r0, .L54+20
	str	r2, [r3, #56]
	ldr	r2, [r0]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r0]
	movle	r2, r5
	movgt	r2, r5
	ldrgt	r7, .L54+24
	ldrgt	r6, [r7]
	subgt	lr, lr, #1
	subgt	r6, r6, #1
	str	r5, [r3, #4]
	strgt	lr, [r4]
	strgt	r6, [r7]
.L15:
	ldr	r0, .L54
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L18
	ldr	r0, [r3, #16]
	rsb	r5, r0, #1024
	cmp	r5, r2
	ble	.L18
	ldr	r6, [r3, #48]
	add	r0, r0, r2
	sub	r0, r0, #1
	add	r0, r0, r6
	ldr	r7, .L54+16
	add	r5, r0, r1, lsl #10
	lsl	r5, r5, #1
	ldrh	r5, [r7, r5]
	cmp	r5, #0
	beq	.L18
	ldr	r5, [r3, #20]
	add	r5, r1, r5
	sub	r5, r5, #1
	add	r0, r0, r5, lsl #10
	lsl	r0, r0, #1
	ldrh	r0, [r7, r0]
	cmp	r0, #0
	beq	.L18
	ldr	r5, .L54+28
	ldr	r0, .L54+32
	ldr	r5, [r5]
	cmp	r2, r0
	cmpgt	r5, #4
	bgt	.L18
	mov	r0, #1
	ldr	r5, [r3, #28]
	cmp	r5, #0
	moveq	r5, #14
	str	r0, [r3, #40]
	str	r0, [r3, #32]
	moveq	r0, #22
	movne	r0, #13
	add	r2, r2, r6
	ldr	r6, .L54+20
	streq	r5, [r3, #60]
	str	r0, [r3, #56]
	ldr	r5, [r6]
	ldr	r0, .L54+36
	cmp	r5, r0
	str	r2, [r3, #4]
	bgt	.L18
	ldr	r8, .L54+24
	ldr	r7, [r8]
	cmp	r7, r0
	bgt	.L18
	ldr	r0, [r3, #12]
	cmp	r0, #120
	ble	.L18
	add	r5, r5, #1
	add	lr, lr, #1
	add	r7, r7, #1
	str	r5, [r6]
	str	lr, [r4]
	str	r7, [r8]
.L18:
	sub	r2, r2, lr
	sub	r1, r1, ip
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L53:
	ldr	r5, [r3, #44]
	add	r0, r4, r1
	sub	r0, r0, #1
	add	r0, r0, r5
	add	r6, r2, r0, lsl #10
	ldr	r7, .L54+16
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	lsl	r0, r0, #10
	beq	.L12
	ldr	r6, [r3, #16]
	add	r0, r0, r6
	add	r0, r0, r2
	add	r0, r7, r0, lsl #1
	ldrh	r0, [r0, #-2]
	cmp	r0, #0
	beq	.L12
	mov	r0, #1
	add	r1, r1, r5
	ldr	r5, [r3, #28]
	cmp	r5, #0
	moveq	r5, #17
	str	r0, [r3, #32]
	mov	r6, #3
	moveq	r0, #9
	movne	r0, #9
	streq	r5, [r3, #60]
	cmp	ip, #95
	str	r1, [r3]
	str	r6, [r3, #40]
	str	r0, [r3, #56]
	bgt	.L12
	ldr	r5, [r3, #8]
	rsb	r0, r4, #80
	cmp	r5, r0
	addgt	ip, ip, #1
	strgt	ip, [lr]
	b	.L12
.L52:
	ldr	r0, [r3, #44]
	sub	r0, r1, r0
	ldr	r5, .L54+16
	add	r4, r2, r0, lsl #10
	lsl	r4, r4, #1
	ldrh	r4, [r5, r4]
	cmp	r4, #0
	lsl	r4, r0, #10
	beq	.L9
	ldr	r6, [r3, #16]
	add	r4, r4, r6
	add	r4, r4, r2
	add	r5, r5, r4, lsl #1
	ldrh	r4, [r5, #-2]
	cmp	r4, #0
	beq	.L9
	mov	r4, #2
	mov	r1, #1
	ldr	r5, [r3, #28]
	cmp	r5, #0
	str	r4, [r3, #40]
	moveq	r4, #10
	str	r1, [r3, #32]
	moveq	r1, #12
	movne	r1, #12
	streq	r4, [r3, #60]
	cmp	ip, #0
	str	r0, [r3]
	str	r1, [r3, #56]
	ble	.L22
	ldr	r1, [r3, #20]
	ldr	r4, [r3, #8]
	rsb	r1, r1, #80
	cmp	r4, r1
	sublt	ip, ip, #1
	movlt	r1, r0
	strlt	ip, [lr]
	blt	.L9
.L22:
	mov	r1, r0
	b	.L9
.L55:
	.align	2
.L54:
	.word	67109120
	.word	goose
	.word	voff
	.word	gooseHoff
	.word	tempCollisionBitmap
	.word	hoff
	.word	overallHoff
	.word	tasks
	.word	389
	.word	782
	.size	updateGoose, .-updateGoose
	.align	2
	.global	drawGoose
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGoose, %function
drawGoose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L64
	ldr	r1, [r2, #12]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #52]
	ldr	r3, [r2, #28]
	ldr	ip, .L64+4
	push	{r4, r5, lr}
	ldr	r4, [r2, #8]
	lsl	lr, r0, #3
	cmp	r3, #2
	add	r0, ip, r0, lsl #3
	strh	r4, [ip, lr]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldrh	r1, [r2, #40]
	beq	.L57
	ldr	r4, [r2, #32]
	lsl	r3, r3, #16
	cmp	r4, #1
	lsr	r3, r3, #16
	beq	.L63
	cmp	r4, #0
	ldrne	r0, [r2, #36]
	bne	.L59
	add	r3, r3, r3, lsl #1
	lsl	r3, r3, #2
	add	r3, r3, r1, lsl #7
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L63:
	ldr	r4, .L64+8
	ldr	r0, [r4]
	add	r0, r0, #1
	cmp	r0, #6
	str	r0, [r4]
	ldr	r0, [r2, #36]
	ble	.L59
	rsbs	r0, r0, #1
	movcc	r0, #0
	mov	r5, #0
	str	r0, [r2, #36]
	str	r5, [r4]
.L59:
	add	r3, r3, r3, lsl #1
	add	r3, r3, r1, lsl #5
	add	r3, r3, #1
	add	r3, r3, r0
	add	r2, ip, lr
	lsl	r3, r3, #2
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L57:
	lsl	r3, r1, #3
	add	r3, r3, #516
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L65:
	.align	2
.L64:
	.word	goose
	.word	shadowOAM
	.word	anicounter
	.size	drawGoose, .-drawGoose
	.ident	"GCC: (devkitARM release 53) 9.1.0"
