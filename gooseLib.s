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
	mov	r2, #0
	str	lr, [sp, #-4]!
	mov	r1, #1
	mov	lr, #64
	mov	r0, #32
	mov	ip, #104
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	lr, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #28]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r1, [r3, #48]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	honkTimer
	.word	gateOpen
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
	mov	r2, #0
	ldr	r3, .L70
	ldrh	r3, [r3, #48]
	ands	r3, r3, #512
	movne	r3, #5
	push	{r4, r5, r6, lr}
	ldr	r4, .L70+4
	str	r2, [r4, #32]
	movne	r2, #1
	streq	r3, [r4, #28]
	strne	r3, [r4, #60]
	ldr	r3, .L70
	strne	r2, [r4, #28]
	ldrh	r2, [r3, #48]
	tst	r2, #64
	sub	sp, sp, #16
	bne	.L9
	ldr	r1, [r4]
	cmp	r1, #0
	ble	.L11
	ldr	r3, [r4, #44]
	ldr	r0, [r4, #4]
	sub	r3, r1, r3
	add	r3, r3, #15
	ldr	ip, .L70+8
	add	r2, r0, r3, lsl #10
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #14]
	cmp	r2, #0
	lsl	r3, r3, #10
	bne	.L67
.L11:
	ldr	r3, .L70+12
	ldrh	r2, [r3]
	ldr	r3, .L70+16
	tst	r2, #2
	ldr	r2, [r3]
	beq	.L30
	ldr	r1, .L70+20
	ldrh	r1, [r1]
	tst	r1, #2
	bne	.L30
	cmp	r2, #0
	beq	.L68
.L30:
	cmp	r2, #29
	movgt	r2, #0
	strgt	r2, [r3]
	bgt	.L31
	cmp	r2, #0
	addgt	r2, r2, #1
	strgt	r2, [r3]
.L31:
	ldr	r2, .L70+24
	ldr	r3, .L70+28
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	ldrh	r2, [r3, #48]
	tst	r2, #128
	bne	.L15
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	rsb	r2, r3, #256
	cmp	r1, r2
	bge	.L11
	ldr	r2, [r4, #44]
	add	r3, r1, r3
	ldr	r0, [r4, #4]
	sub	r3, r3, #1
	add	r3, r3, r2
	ldr	ip, .L70+8
	add	r2, r0, r3, lsl #10
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #14]
	cmp	r2, #0
	lsl	r3, r3, #10
	beq	.L11
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	add	r3, r3, r0
	add	r3, ip, r3, lsl #1
	ldrh	r3, [r3, #-16]
	cmp	r3, #0
	beq	.L11
	mov	r5, #64
	mov	lr, #16
	mov	r3, #32
	ldr	ip, .L70+32
	ldr	r2, [ip, #4]
	ldr	ip, [ip]
	add	r2, r2, #6
	stm	sp, {r2, ip}
	str	r5, [sp, #12]
	mov	r2, r3
	str	lr, [sp, #8]
	ldr	r5, .L70+36
	add	r1, r1, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L11
	mov	r2, #1
	ldr	r0, [r4, #28]
	ldr	r3, [r4]
	cmp	r0, #0
	ldr	ip, [r4, #44]
	str	r2, [r4, #32]
	moveq	r2, #17
	add	r3, r3, ip
	str	r3, [r4]
	moveq	r3, #9
	movne	r3, #9
	mov	r1, #3
	streq	r2, [r4, #60]
	ldr	r2, .L70+24
	str	r3, [r4, #56]
	ldr	r3, [r2]
	cmp	r3, #95
	str	r1, [r4, #40]
	bgt	.L11
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #8]
	rsb	r1, r1, #80
	cmp	r0, r1
	addgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L11
.L15:
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L18
	ldr	r0, [r4, #4]
	cmp	r0, #1
	ble	.L11
	ldr	r3, [r4, #48]
	ldr	r1, [r4]
	sub	r3, r0, r3
	add	r3, r3, #9
	add	r2, r1, #15
	ldr	ip, .L70+8
	add	r2, r3, r2, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L11
	ldr	r2, [r4, #20]
	add	r2, r1, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #10
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L11
	mov	r5, #64
	mov	lr, #16
	mov	r3, #32
	ldr	ip, .L70+32
	ldr	r2, [ip, #4]
	ldr	ip, [ip]
	add	r2, r2, #6
	stm	sp, {r2, ip}
	str	r5, [sp, #12]
	mov	r2, r3
	str	lr, [sp, #8]
	ldr	r5, .L70+36
	sub	r0, r0, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L11
	mov	r2, #1
	ldr	r1, [r4, #28]
	ldr	r3, [r4, #4]
	cmp	r1, #0
	ldr	ip, [r4, #48]
	str	r2, [r4, #32]
	moveq	r2, #14
	sub	r3, r3, ip
	str	r3, [r4, #4]
	mvneq	r3, #0
	movne	r3, #8
	streq	r2, [r4, #60]
	ldr	r2, .L70+40
	str	r3, [r4, #56]
	ldr	r3, [r2]
	cmp	r3, #0
	str	r0, [r4, #40]
	ble	.L11
	ldr	lr, .L70+28
	ldr	ip, .L70+44
	ldr	r0, [lr]
	ldr	r1, [ip]
	sub	r3, r3, #1
	sub	r0, r0, #1
	sub	r1, r1, #1
	str	r3, [r2]
	str	r0, [lr]
	str	r1, [ip]
	b	.L11
.L67:
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	add	r3, r3, r0
	add	r3, ip, r3, lsl #1
	ldrh	r3, [r3, #-16]
	cmp	r3, #0
	beq	.L11
	mov	r5, #64
	mov	lr, #16
	mov	r3, #32
	ldr	ip, .L70+32
	ldr	r2, [ip, #4]
	ldr	ip, [ip]
	add	r2, r2, #6
	stm	sp, {r2, ip}
	str	r5, [sp, #12]
	mov	r2, r3
	str	lr, [sp, #8]
	ldr	r5, .L70+36
	sub	r1, r1, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L11
	mov	r2, #1
	ldr	r3, [r4]
	ldr	ip, [r4, #44]
	ldr	r0, [r4, #28]
	mov	r1, #2
	sub	r3, r3, ip
	cmp	r0, #0
	str	r3, [r4]
	moveq	r3, #12
	movne	r3, #12
	str	r2, [r4, #32]
	moveq	r2, #10
	str	r1, [r4, #40]
	ldr	r1, .L70+24
	str	r3, [r4, #56]
	ldr	r3, [r1]
	streq	r2, [r4, #60]
	cmp	r3, #0
	ble	.L11
	ldr	r2, [r4, #20]
	ldr	r0, [r4, #8]
	rsb	r2, r2, #80
	cmp	r0, r2
	sublt	r3, r3, #1
	strlt	r3, [r1]
	b	.L11
.L18:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L11
	ldr	r3, [r4, #16]
	ldr	r0, [r4, #4]
	rsb	r2, r3, #1024
	cmp	r0, r2
	bge	.L11
	ldr	r2, [r4, #48]
	ldr	r1, [r4]
	add	r3, r0, r3
	add	r3, r3, r2
	sub	r3, r3, #10
	add	r2, r1, #15
	ldr	ip, .L70+8
	add	r2, r3, r2, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L11
	ldr	r2, [r4, #20]
	add	r2, r1, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #10
	lsl	r3, r3, #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L11
	mov	r5, #64
	mov	lr, #16
	mov	r3, #32
	ldr	ip, .L70+32
	ldr	r2, [ip, #4]
	ldr	ip, [ip]
	add	r2, r2, #6
	stm	sp, {r2, ip}
	str	r5, [sp, #12]
	mov	r2, r3
	str	lr, [sp, #8]
	ldr	r5, .L70+36
	add	r0, r0, #1
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L11
	ldr	r2, .L70+48
	ldr	r1, [r2]
	cmp	r1, #4
	ldr	r3, [r4, #4]
	ble	.L21
	ldr	r2, .L70+52
	cmp	r3, r2
	bgt	.L11
.L22:
	ldr	r0, [r4, #28]
	ldr	r2, [r4, #48]
	cmp	r0, #0
	add	r3, r2, r3
	mov	r1, #1
	moveq	r2, #14
	str	r3, [r4, #4]
	moveq	r3, #22
	movne	r3, #13
	ldr	lr, .L70+40
	streq	r2, [r4, #60]
	str	r1, [r4, #40]
	str	r1, [r4, #32]
	ldr	r2, [lr]
	ldr	r1, .L70+56
	cmp	r2, r1
	str	r3, [r4, #56]
	bgt	.L11
	ldr	ip, .L70+44
	ldr	r3, [ip]
	cmp	r3, r1
	bgt	.L11
	ldr	r1, [r4, #12]
	cmp	r1, #120
	ble	.L11
	ldr	r0, .L70+28
	ldr	r1, [r0]
	add	r2, r2, #1
	add	r3, r3, #1
	add	r1, r1, #1
	str	r2, [lr]
	str	r3, [ip]
	str	r1, [r0]
	b	.L11
.L68:
	mov	ip, #1
	ldr	r1, .L70+60
	str	ip, [r3]
	ldr	r0, .L70+64
	ldr	r3, .L70+68
	mov	lr, pc
	bx	r3
	b	.L31
.L21:
	cmp	r1, #1
	bne	.L23
	ldr	r1, [r4]
	cmp	r1, #8
	bgt	.L23
	cmp	r3, #640
	blt	.L22
	ldr	r1, .L70+72
	ldr	r1, [r1]
	cmp	r1, #9
	beq	.L69
.L24:
	ldr	r2, [r4]
	cmp	r2, #7
	bgt	.L22
	ldr	r2, .L70+76
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L11
	b	.L22
.L23:
	cmp	r3, #640
	bge	.L24
	b	.L22
.L69:
	ldr	r1, [r4, #24]
	cmp	r1, #0
	beq	.L24
	mov	r1, #1
	ldr	r0, [r4, #48]
	ldr	ip, [r4, #28]
	add	r3, r3, r0
	ldr	r0, .L70+76
	cmp	ip, #0
	str	r1, [r0]
	moveq	r0, #14
	str	r1, [r4, #40]
	str	r1, [r4, #32]
	moveq	r1, #22
	movne	r1, #13
	ldr	r6, .L70+40
	streq	r0, [r4, #60]
	ldr	ip, .L70+56
	ldr	r0, [r6]
	cmp	r0, ip
	str	r3, [r4, #4]
	str	r1, [r4, #56]
	bgt	.L27
	ldr	r5, .L70+44
	ldr	r1, [r5]
	cmp	r1, ip
	bgt	.L27
	ldr	ip, [r4, #12]
	cmp	ip, #120
	ble	.L27
	ldr	lr, .L70+28
	ldr	ip, [lr]
	add	r0, r0, #1
	add	r1, r1, #1
	add	ip, ip, #1
	str	r0, [r6]
	str	r1, [r5]
	str	ip, [lr]
.L27:
	cmp	r3, #676
	movge	r3, #0
	strge	r3, [r2]
	b	.L11
.L71:
	.align	2
.L70:
	.word	67109120
	.word	goose
	.word	gardenCollisionBitmap
	.word	oldButtons
	.word	honkTimer
	.word	buttons
	.word	voff
	.word	gooseHoff
	.word	human
	.word	collision
	.word	hoff
	.word	overallHoff
	.word	tasks
	.word	389
	.word	782
	.word	5722
	.word	honk
	.word	playSoundB
	.word	stolenObject
	.word	gateOpen
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
	ldr	r2, .L85
	ldr	r1, [r2, #12]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	ip, [r2, #52]
	ldr	r3, [r2, #28]
	ldr	r0, .L85+4
	push	{r4, r5, lr}
	ldr	r4, [r2, #8]
	lsl	lr, ip, #3
	cmp	r3, #2
	add	ip, r0, ip, lsl #3
	strh	r4, [r0, lr]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	ldrh	r1, [r2, #40]
	beq	.L73
	add	r3, r3, r3, lsl #1
	ldr	r4, [r2, #32]
	lsl	r3, r3, #2
	add	r3, r3, r1, lsl #7
	lsl	r3, r3, #16
	cmp	r4, #1
	lsr	r3, r3, #16
	beq	.L83
	cmp	r4, #0
	bne	.L84
.L81:
	strh	r3, [ip, #4]	@ movhi
.L72:
	pop	{r4, r5, lr}
	bx	lr
.L83:
	ldr	ip, .L85+8
	ldr	r1, [ip]
	add	r1, r1, #1
	cmp	r1, #3
	str	r1, [ip]
	ldr	r1, [r2, #36]
	ble	.L75
	mov	r5, #0
	add	r1, r1, #1
	subs	r4, r5, r1
	and	r4, r4, #3
	and	r1, r1, #3
	rsbpl	r1, r4, #0
	str	r1, [r2, #36]
	str	r5, [ip]
.L75:
	bic	r2, r1, #2
	cmp	r2, #1
	add	r0, r0, lr
	beq	.L82
.L78:
	cmp	r1, #0
	addne	r3, r3, #8
	strhne	r3, [r0, #4]	@ movhi
	bne	.L72
	add	r3, r3, #4
.L82:
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L73:
	lsl	r3, r1, #3
	add	r3, r3, #516
	b	.L81
.L84:
	ldr	r1, [r2, #36]
	bic	r2, r1, #2
	cmp	r2, #1
	add	r0, r0, lr
	bne	.L78
	b	.L82
.L86:
	.align	2
.L85:
	.word	goose
	.word	shadowOAM
	.word	anicounter
	.size	drawGoose, .-drawGoose
	.comm	gateOpen,4,4
	.comm	honkTimer,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
