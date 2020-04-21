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
	ldr	r3, .L76
	ldrh	r3, [r3, #48]
	ands	r3, r3, #512
	movne	r3, #5
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L76+4
	str	r2, [r4, #32]
	movne	r2, #1
	streq	r3, [r4, #28]
	strne	r3, [r4, #60]
	ldr	r3, .L76
	ldrh	r3, [r3, #48]
	strne	r2, [r4, #28]
	tst	r3, #64
	bne	.L71
	ldr	r3, [r4]
	cmn	r3, #3
	bge	.L62
.L71:
	ldr	r5, .L76+8
.L10:
	ldr	r3, .L76
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L15
	ldr	r1, [r4, #20]
	ldr	r2, [r4]
	rsb	r3, r1, #256
	cmp	r2, r3
	blt	.L73
.L15:
	ldr	r3, .L76
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	bne	.L72
	ldr	r1, [r4, #4]
	cmp	r1, #1
	ble	.L72
	ldr	r0, [r4, #48]
	ldr	r2, [r4]
	sub	r1, r1, r0
	ldr	ip, .L76+12
	add	r0, r1, r2, lsl #10
	lsl	r0, r0, #1
	ldrh	r0, [ip, r0]
	cmp	r0, #0
	bne	.L66
.L72:
	ldr	r6, .L76+16
.L20:
	ldr	r3, .L76
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L25
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #4]
	rsb	r1, r3, #1024
	cmp	r2, r1
	blt	.L74
.L25:
	ldr	r3, .L76+20
	ldrh	r2, [r3]
	ldr	r3, .L76+24
	tst	r2, #2
	ldr	r2, [r3]
	beq	.L30
	ldr	r1, .L76+28
	ldrh	r1, [r1]
	tst	r1, #2
	bne	.L30
	cmp	r2, #0
	beq	.L75
.L30:
	cmp	r2, #29
	movgt	r2, #0
	strgt	r2, [r3]
	bgt	.L31
	cmp	r2, #0
	addgt	r2, r2, #1
	strgt	r2, [r3]
.L31:
	ldm	r4, {r2, r3}
	ldr	r0, [r5]
	ldr	r1, [r6]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L74:
	ldr	r0, [r4, #48]
	add	r3, r2, r3
	ldr	ip, [r4]
	sub	r3, r3, #1
	add	r3, r3, r0
	ldr	lr, .L76+12
	add	r1, r3, ip, lsl #10
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	beq	.L25
	ldr	r1, [r4, #20]
	add	r1, ip, r1
	sub	r1, r1, #1
	add	r3, r3, r1, lsl #10
	lsl	r3, r3, #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	beq	.L25
	ldr	r1, .L76+32
	ldr	lr, .L76+36
	ldr	r3, [r1]
	cmp	r2, lr
	cmpgt	r3, #4
	bgt	.L25
	ldr	lr, .L76+40
	ldr	r7, [lr]
	subs	r3, r3, #1
	movne	r3, #1
	cmp	r7, #0
	movne	r3, #1
	cmp	ip, #4
	movle	ip, r3
	orrgt	ip, r3, #1
	ldr	r3, .L76+44
	cmp	r2, r3
	orrne	ip, ip, #1
	cmp	ip, #0
	beq	.L27
	add	r3, r2, r0
	ldr	r2, [r4, #28]
	mov	r1, #1
	cmp	r2, #0
	moveq	r2, #14
	str	r3, [r4, #4]
	moveq	r3, #22
	movne	r3, #13
	str	r1, [r4, #40]
	str	r1, [r4, #32]
	ldr	r1, .L76+48
	streq	r2, [r4, #60]
	str	r3, [r4, #56]
	ldr	r2, [r1]
	ldr	r3, .L76+52
	cmp	r2, r3
	bgt	.L25
	ldr	ip, .L76+56
	ldr	r0, [ip]
	cmp	r0, r3
	bgt	.L25
	ldr	r3, [r4, #12]
	cmp	r3, #120
	ble	.L25
	ldr	r3, [r6]
	add	r2, r2, #1
	add	r0, r0, #1
	add	r3, r3, #1
	str	r2, [r1]
	str	r0, [ip]
	str	r3, [r6]
	b	.L25
.L73:
	ldr	ip, [r4, #44]
	add	r3, r2, r1
	ldr	r6, [r4, #4]
	sub	r3, r3, #1
	add	r3, r3, ip
	add	r0, r6, r3, lsl #10
	ldr	lr, .L76+12
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	lsl	r3, r3, #10
	beq	.L15
	ldr	r0, [r4, #16]
	add	r3, r3, r0
	add	r3, r3, r6
	add	r3, lr, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	beq	.L15
	add	r3, r2, ip
	ldr	r2, [r4, #28]
	cmp	r2, #0
	moveq	r2, #17
	str	r3, [r4]
	mov	lr, #3
	moveq	r3, #9
	movne	r3, #9
	mov	r0, #1
	streq	r2, [r4, #60]
	ldr	r2, [r5]
	cmp	r2, #95
	str	lr, [r4, #40]
	str	r0, [r4, #32]
	str	r3, [r4, #56]
	bgt	.L15
	ldr	r0, [r4, #8]
	rsb	r3, r1, #80
	cmp	r0, r3
	addgt	r2, r2, #1
	strgt	r2, [r5]
	b	.L15
.L62:
	ldr	r2, [r4, #44]
	ldr	r0, [r4, #4]
	sub	r3, r3, r2
	ldr	r1, .L76+12
	add	r2, r0, r3, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [r1, r2]
	cmp	r2, #0
	lsl	r2, r3, #10
	beq	.L71
	ldr	ip, [r4, #16]
	add	r2, r2, ip
	add	r2, r2, r0
	add	r1, r1, r2, lsl #1
	ldrh	r2, [r1, #-2]
	cmp	r2, #0
	beq	.L71
	mov	r2, #1
	ldr	r0, [r4, #28]
	cmp	r0, #0
	str	r3, [r4]
	moveq	r3, #12
	movne	r3, #12
	str	r2, [r4, #32]
	moveq	r2, #10
	mov	r1, #2
	ldr	r5, .L76+8
	str	r3, [r4, #56]
	ldr	r3, [r5]
	streq	r2, [r4, #60]
	cmp	r3, #0
	str	r1, [r4, #40]
	ble	.L10
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	rsb	r2, r2, #80
	cmp	r1, r2
	sublt	r3, r3, #1
	strlt	r3, [r5]
	b	.L10
.L66:
	ldr	r0, [r4, #20]
	add	r2, r2, r0
	sub	r2, r2, #1
	add	r2, r1, r2, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [ip, r2]
	cmp	r2, #0
	beq	.L72
	mov	r2, #1
	ldr	r0, [r4, #28]
	cmp	r0, #0
	str	r2, [r4, #32]
	moveq	r2, #14
	str	r3, [r4, #40]
	mvneq	r3, #0
	movne	r3, #8
	streq	r2, [r4, #60]
	ldr	r2, .L76+48
	str	r3, [r4, #56]
	ldr	r3, [r2]
	cmp	r3, #0
	ldr	r6, .L76+16
	ldrgt	r0, .L76+56
	subgt	r3, r3, #1
	str	r1, [r4, #4]
	strgt	r3, [r2]
	ldrgt	r1, [r6]
	ldrgt	r3, [r0]
	subgt	r1, r1, #1
	subgt	r3, r3, #1
	strgt	r1, [r6]
	strgt	r3, [r0]
	b	.L20
.L75:
	mov	ip, #1
	ldr	r1, .L76+60
	str	ip, [r3]
	ldr	r0, .L76+64
	ldr	r3, .L76+68
	mov	lr, pc
	bx	r3
	b	.L31
.L27:
	ldr	r3, .L76+72
	ldr	r3, [r3]
	cmp	r3, #9
	moveq	r3, #1
	streq	ip, [r1]
	streq	r3, [lr]
	b	.L25
.L77:
	.align	2
.L76:
	.word	67109120
	.word	goose
	.word	voff
	.word	gardenCollisionBitmap
	.word	gooseHoff
	.word	oldButtons
	.word	honkTimer
	.word	buttons
	.word	tasks
	.word	389
	.word	gateOpen
	.word	589
	.word	hoff
	.word	782
	.word	overallHoff
	.word	3163
	.word	honk
	.word	playSoundB
	.word	stolenObject
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
	ldr	r2, .L86
	ldr	r1, [r2, #12]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #52]
	ldr	r3, [r2, #28]
	ldr	ip, .L86+4
	push	{r4, r5, lr}
	ldr	r4, [r2, #8]
	lsl	lr, r0, #3
	cmp	r3, #2
	add	r0, ip, r0, lsl #3
	strh	r4, [ip, lr]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldrh	r1, [r2, #40]
	beq	.L79
	ldr	r4, [r2, #32]
	lsl	r3, r3, #16
	cmp	r4, #1
	lsr	r3, r3, #16
	beq	.L85
	cmp	r4, #0
	ldrne	r0, [r2, #36]
	bne	.L81
	add	r3, r3, r3, lsl #1
	lsl	r3, r3, #2
	add	r3, r3, r1, lsl #7
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L85:
	ldr	r4, .L86+8
	ldr	r0, [r4]
	add	r0, r0, #1
	cmp	r0, #6
	str	r0, [r4]
	ldr	r0, [r2, #36]
	ble	.L81
	rsbs	r0, r0, #1
	movcc	r0, #0
	mov	r5, #0
	str	r0, [r2, #36]
	str	r5, [r4]
.L81:
	add	r3, r3, r3, lsl #1
	add	r3, r3, r1, lsl #5
	add	r3, r3, #1
	add	r3, r3, r0
	add	r2, ip, lr
	lsl	r3, r3, #2
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L79:
	lsl	r3, r1, #3
	add	r3, r3, #516
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L87:
	.align	2
.L86:
	.word	goose
	.word	shadowOAM
	.word	anicounter
	.size	drawGoose, .-drawGoose
	.comm	gateOpen,4,4
	.comm	honkTimer,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
