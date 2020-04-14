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
	mov	r2, #1
	mov	r1, #0
	mov	lr, #64
	mov	r0, #32
	mov	ip, #104
	ldr	r3, .L4
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r1, [r3, #52]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
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
	ldr	r3, .L52
	ldrh	r2, [r3, #48]
	ands	r2, r2, #512
	movne	r2, #5
	mov	r1, #1
	ldr	r3, .L52+4
	push	{r4, r5, r6, r7, r8, lr}
	streq	r2, [r3, #28]
	strne	r2, [r3, #60]
	ldr	r2, .L52
	ldrh	r2, [r2, #48]
	ldr	lr, .L52+8
	strne	r1, [r3, #28]
	tst	r2, #64
	str	r1, [r3, #32]
	ldr	ip, [lr]
	ldr	r2, [r3]
	ldr	r1, [r3, #4]
	bne	.L9
	cmn	r2, #3
	bge	.L50
.L9:
	ldr	r0, .L52
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L12
	ldr	r4, [r3, #20]
	rsb	r0, r4, #256
	cmp	r0, r2
	bgt	.L51
.L12:
	ldr	r0, .L52
	ldrh	r0, [r0, #48]
	ldr	r4, .L52+12
	ands	r0, r0, #32
	ldr	lr, [r4]
	bne	.L15
	cmp	r1, #1
	ble	.L15
	ldr	r5, [r3, #48]
	sub	r5, r1, r5
	ldr	r7, .L52+16
	add	r6, r5, r2, lsl #10
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	beq	.L15
	ldr	r6, [r3, #20]
	add	r6, r2, r6
	sub	r6, r6, #1
	add	r6, r5, r6, lsl #10
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	beq	.L15
	mov	r1, #2
	ldr	r6, [r3, #28]
	cmp	r6, #0
	str	r0, [r3, #40]
	moveq	r0, #14
	str	r1, [r3, #32]
	mvneq	r1, #0
	movne	r1, #8
	streq	r0, [r3, #60]
	ldr	r0, .L52+20
	str	r1, [r3, #56]
	ldr	r1, [r0]
	cmp	r1, #0
	str	r5, [r3, #4]
	ble	.L24
	ldr	r6, [r3, #12]
	cmp	r6, #119
	bgt	.L24
	sub	r1, r1, #1
	str	r1, [r0]
	mov	r1, r5
	ldr	r7, .L52+24
	ldr	r6, [r7]
	sub	lr, lr, #1
	sub	r6, r6, #1
	str	lr, [r4]
	str	r6, [r7]
.L15:
	ldr	r0, .L52
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L18
	ldr	r0, [r3, #16]
	rsb	r5, r0, #1024
	cmp	r5, r1
	ble	.L18
	ldr	r6, [r3, #48]
	add	r0, r0, r1
	sub	r0, r0, #1
	add	r0, r0, r6
	ldr	r7, .L52+16
	add	r5, r0, r2, lsl #10
	lsl	r5, r5, #1
	ldrh	r5, [r7, r5]
	cmp	r5, #0
	beq	.L18
	ldr	r5, [r3, #20]
	add	r5, r2, r5
	sub	r5, r5, #1
	add	r0, r0, r5, lsl #10
	lsl	r0, r0, #1
	ldrh	r0, [r7, r0]
	cmp	r0, #0
	beq	.L18
	mov	r0, #2
	mov	r5, #1
	add	r1, r1, r6
	ldr	r6, [r3, #28]
	cmp	r6, #0
	str	r0, [r3, #32]
	str	r5, [r3, #40]
	moveq	r0, #22
	moveq	r5, #14
	movne	r0, #13
	ldr	r6, .L52+20
	streq	r5, [r3, #60]
	str	r0, [r3, #56]
	ldr	r5, [r6]
	ldr	r0, .L52+28
	cmp	r5, r0
	str	r1, [r3, #4]
	bgt	.L18
	ldr	r8, .L52+24
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
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L51:
	ldr	r5, [r3, #44]
	add	r0, r4, r2
	sub	r0, r0, #1
	add	r0, r0, r5
	add	r6, r1, r0, lsl #10
	ldr	r7, .L52+16
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	lsl	r0, r0, #10
	beq	.L12
	ldr	r6, [r3, #16]
	add	r0, r0, r6
	add	r0, r0, r1
	add	r0, r7, r0, lsl #1
	ldrh	r0, [r0, #-2]
	cmp	r0, #0
	beq	.L12
	mov	r0, #2
	add	r2, r2, r5
	ldr	r5, [r3, #28]
	cmp	r5, #0
	moveq	r5, #17
	str	r0, [r3, #32]
	mov	r6, #3
	moveq	r0, #9
	movne	r0, #9
	streq	r5, [r3, #60]
	cmp	ip, #95
	str	r2, [r3]
	str	r6, [r3, #40]
	str	r0, [r3, #56]
	bgt	.L12
	ldr	r5, [r3, #8]
	rsb	r0, r4, #80
	cmp	r5, r0
	addgt	ip, ip, #1
	strgt	ip, [lr]
	b	.L12
.L50:
	ldr	r0, [r3, #44]
	sub	r0, r2, r0
	ldr	r5, .L52+16
	add	r4, r1, r0, lsl #10
	lsl	r4, r4, #1
	ldrh	r4, [r5, r4]
	cmp	r4, #0
	lsl	r4, r0, #10
	beq	.L9
	ldr	r6, [r3, #16]
	add	r4, r4, r6
	add	r4, r4, r1
	add	r5, r5, r4, lsl #1
	ldrh	r4, [r5, #-2]
	cmp	r4, #0
	beq	.L9
	mov	r2, #2
	ldr	r4, [r3, #28]
	cmp	r4, #0
	moveq	r4, #10
	str	r2, [r3, #40]
	str	r2, [r3, #32]
	moveq	r2, #12
	movne	r2, #12
	streq	r4, [r3, #60]
	cmp	ip, #0
	str	r0, [r3]
	str	r2, [r3, #56]
	ble	.L22
	ldr	r2, [r3, #20]
	ldr	r4, [r3, #8]
	rsb	r2, r2, #80
	cmp	r4, r2
	bge	.L22
	sub	ip, ip, #1
	mov	r2, r0
	str	ip, [lr]
	b	.L9
.L24:
	mov	r1, r5
	b	.L15
.L22:
	mov	r2, r0
	b	.L9
.L53:
	.align	2
.L52:
	.word	67109120
	.word	goose
	.word	voff
	.word	gooseHoff
	.word	tempCollisionBitmap
	.word	hoff
	.word	overallHoff
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
	ldr	r2, .L62
	ldr	r1, [r2, #12]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #52]
	ldr	r3, [r2, #28]
	ldr	ip, .L62+4
	push	{r4, r5, lr}
	ldr	r4, [r2, #8]
	lsl	lr, r0, #3
	cmp	r3, #2
	add	r0, ip, r0, lsl #3
	strh	r4, [ip, lr]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldrh	r1, [r2, #40]
	beq	.L55
	ldr	r4, [r2, #32]
	lsl	r3, r3, #16
	cmp	r4, #2
	lsr	r3, r3, #16
	beq	.L61
	cmp	r4, #1
	beq	.L58
	ldr	r0, [r2, #36]
.L57:
	lsl	r3, r3, #2
	add	r3, r3, r1, lsl #5
	add	r3, r3, #2
	add	r3, r3, r0
	add	r2, ip, lr
	lsl	r3, r3, #2
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L61:
	ldr	r4, .L62+8
	ldr	r0, [r4]
	add	r0, r0, #1
	cmp	r0, #6
	str	r0, [r4]
	ldr	r0, [r2, #36]
	ble	.L57
	rsbs	r0, r0, #1
	movcc	r0, #0
	mov	r5, #0
	str	r0, [r2, #36]
	str	r5, [r4]
	b	.L57
.L55:
	lsl	r3, r1, #3
	add	r3, r3, #516
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L58:
	add	r3, r3, r1, lsl #3
	lsl	r3, r3, #4
	add	r3, r3, #4
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	goose
	.word	shadowOAM
	.word	anicounter
	.size	drawGoose, .-drawGoose
	.ident	"GCC: (devkitARM release 53) 9.1.0"
