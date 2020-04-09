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
	.global	initHuman
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHuman, %function
initHuman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initHuman, .-initHuman
	.align	2
	.global	initObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObjects, %function
initObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #8
	mov	r1, #0
	mov	r5, #1
	mov	r4, #70
	mov	lr, #230
	mov	r6, #2
	mov	ip, #140
	mov	r0, #340
	ldr	r3, .L9
	str	r6, [r3, #88]
	str	r5, [r3, #40]
	str	r5, [r3, #84]
	str	r4, [r3, #4]
	str	r4, [r3, #20]
	str	lr, [r3, #8]
	str	lr, [r3, #24]
	str	r1, [r3]
	str	r1, [r3, #48]
	str	r1, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	ip, [r3, #52]
	str	ip, [r3, #68]
	str	r0, [r3, #56]
	str	r0, [r3, #72]
	pop	{r4, r5, r6, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	objects
	.size	initObjects, .-initObjects
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
	push	{r4, lr}
	mov	r2, #1
	mov	r4, #0
	mov	r1, #32
	mov	ip, #64
	mov	r0, #104
	ldr	r3, .L13
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #52]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	bl	initObjects
	mov	r0, #5
	mov	r2, #16
	ldr	r1, .L13+4
	ldr	r3, .L13+8
	str	r4, [r1]
	str	r4, [r3]
	ldr	ip, .L13+12
	ldr	r1, .L13+16
	ldr	r3, .L13+20
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r3]
	ldr	ip, .L13+24
	ldr	r1, .L13+28
	ldr	r3, .L13+32
	str	r4, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	goose
	.word	cheat
	.word	voff
	.word	hoff
	.word	anicounter
	.word	gooseHoff
	.word	overallHoff
	.word	tasks
	.word	sb
	.size	initGame, .-initGame
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
	ldr	r3, .L61
	ldrh	r2, [r3, #48]
	ands	r2, r2, #512
	movne	r2, #7
	mov	r1, #1
	ldr	r3, .L61+4
	push	{r4, r5, r6, r7, r8, lr}
	streq	r2, [r3, #28]
	strne	r2, [r3, #60]
	ldr	r2, .L61
	ldrh	r2, [r2, #48]
	ldr	lr, .L61+8
	strne	r1, [r3, #28]
	tst	r2, #64
	str	r1, [r3, #32]
	ldr	ip, [lr]
	ldr	r2, [r3]
	ldr	r1, [r3, #4]
	bne	.L18
	cmn	r2, #3
	bge	.L59
.L18:
	ldr	r0, .L61
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L21
	ldr	r4, [r3, #20]
	rsb	r0, r4, #256
	cmp	r0, r2
	bgt	.L60
.L21:
	ldr	r0, .L61
	ldrh	r0, [r0, #48]
	ldr	r4, .L61+12
	ands	r0, r0, #32
	ldr	lr, [r4]
	bne	.L24
	cmp	r1, #1
	ble	.L24
	ldr	r5, [r3, #48]
	sub	r5, r1, r5
	ldr	r7, .L61+16
	add	r6, r5, r2, lsl #10
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	beq	.L24
	ldr	r6, [r3, #20]
	add	r6, r2, r6
	sub	r6, r6, #1
	add	r6, r5, r6, lsl #10
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	beq	.L24
	ldr	r1, [r3, #28]
	cmp	r1, #0
	str	r0, [r3, #40]
	moveq	r0, #17
	movne	r1, #9
	mov	r6, #2
	streq	r0, [r3, #60]
	ldr	r0, .L61+20
	streq	r1, [r3, #56]
	strne	r1, [r3, #56]
	ldr	r1, [r0]
	cmp	r1, #1
	str	r5, [r3, #4]
	str	r6, [r3, #32]
	ble	.L33
	ldr	r6, [r3, #12]
	cmp	r6, #119
	bgt	.L33
	sub	r1, r1, #1
	str	r1, [r0]
	mov	r1, r5
	ldr	r7, .L61+24
	ldr	r6, [r7]
	sub	lr, lr, #1
	sub	r6, r6, #1
	str	lr, [r4]
	str	r6, [r7]
.L24:
	ldr	r0, .L61
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L27
	ldr	r0, [r3, #16]
	rsb	r5, r0, #1024
	cmp	r5, r1
	ble	.L27
	ldr	r6, [r3, #48]
	add	r0, r0, r1
	sub	r0, r0, #1
	add	r0, r0, r6
	ldr	r7, .L61+16
	add	r5, r0, r2, lsl #10
	lsl	r5, r5, #1
	ldrh	r5, [r7, r5]
	cmp	r5, #0
	beq	.L27
	ldr	r5, [r3, #20]
	add	r5, r2, r5
	sub	r5, r5, #1
	add	r0, r0, r5, lsl #10
	lsl	r0, r0, #1
	ldrh	r0, [r7, r0]
	cmp	r0, #0
	beq	.L27
	mov	r0, #2
	mov	r5, #1
	add	r1, r1, r6
	ldr	r6, [r3, #28]
	cmp	r6, #0
	str	r0, [r3, #32]
	str	r5, [r3, #40]
	moveq	r0, #29
	moveq	r5, #17
	movne	r0, #20
	ldr	r6, .L61+24
	streq	r5, [r3, #60]
	str	r0, [r3, #56]
	ldr	r5, [r6]
	ldr	r0, .L61+28
	cmp	r5, r0
	str	r1, [r3, #4]
	bgt	.L27
	ldr	r8, .L61+20
	ldr	r7, [r8]
	cmp	r7, r0
	bgt	.L27
	ldr	r0, [r3, #12]
	cmp	r0, #120
	ble	.L27
	add	r5, r5, #1
	add	lr, lr, #1
	add	r7, r7, #1
	str	r5, [r6]
	str	lr, [r4]
	str	r7, [r8]
.L27:
	sub	r1, r1, lr
	sub	r2, r2, ip
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L60:
	ldr	r5, [r3, #44]
	add	r0, r4, r2
	sub	r0, r0, #1
	add	r0, r0, r5
	add	r6, r1, r0, lsl #10
	ldr	r7, .L61+16
	lsl	r6, r6, #1
	ldrh	r6, [r7, r6]
	cmp	r6, #0
	lsl	r0, r0, #10
	beq	.L21
	ldr	r6, [r3, #16]
	add	r0, r0, r6
	add	r0, r0, r1
	add	r0, r7, r0, lsl #1
	ldrh	r0, [r0, #-2]
	cmp	r0, #0
	beq	.L21
	mov	r0, #2
	add	r2, r2, r5
	ldr	r5, [r3, #28]
	cmp	r5, #0
	moveq	r5, #20
	str	r0, [r3, #32]
	mov	r6, #3
	moveq	r0, #12
	movne	r0, #10
	streq	r5, [r3, #60]
	cmp	ip, #95
	str	r2, [r3]
	str	r6, [r3, #40]
	str	r0, [r3, #56]
	bgt	.L21
	ldr	r5, [r3, #8]
	rsb	r0, r4, #80
	cmp	r5, r0
	addgt	ip, ip, #1
	strgt	ip, [lr]
	b	.L21
.L59:
	ldr	r0, [r3, #44]
	sub	r0, r2, r0
	ldr	r5, .L61+16
	add	r4, r1, r0, lsl #10
	lsl	r4, r4, #1
	ldrh	r4, [r5, r4]
	cmp	r4, #0
	lsl	r4, r0, #10
	beq	.L18
	ldr	r6, [r3, #16]
	add	r4, r4, r6
	add	r4, r4, r1
	add	r5, r5, r4, lsl #1
	ldrh	r4, [r5, #-2]
	cmp	r4, #0
	beq	.L18
	mov	r2, #2
	ldr	r4, [r3, #28]
	cmp	r4, #0
	moveq	r4, #13
	str	r2, [r3, #40]
	str	r2, [r3, #32]
	moveq	r2, #15
	movne	r2, #15
	streq	r4, [r3, #60]
	cmp	ip, #0
	str	r0, [r3]
	str	r2, [r3, #56]
	ble	.L31
	ldr	r2, [r3, #20]
	ldr	r4, [r3, #8]
	rsb	r2, r2, #80
	cmp	r4, r2
	bge	.L31
	sub	ip, ip, #1
	mov	r2, r0
	str	ip, [lr]
	b	.L18
.L33:
	mov	r1, r5
	b	.L24
.L31:
	mov	r2, r0
	b	.L18
.L62:
	.align	2
.L61:
	.word	67109120
	.word	goose
	.word	voff
	.word	gooseHoff
	.word	tempCollisionBitmap
	.word	overallHoff
	.word	hoff
	.word	782
	.size	updateGoose, .-updateGoose
	.align	2
	.global	updateHuman
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHuman, %function
updateHuman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateHuman, .-updateHuman
	.align	2
	.global	updateObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObjects, %function
updateObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #0
	mov	r10, #6
	ldr	r4, .L87
	ldr	r7, .L87+4
	ldr	r5, .L87+8
	ldr	r9, .L87+12
	ldr	r8, .L87+16
	ldr	fp, .L87+20
	sub	sp, sp, #28
.L74:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L65
	ldrh	ip, [r7, #48]
	ldr	r1, [r4, #4]
	ldr	r2, [r9]
	ldr	r0, [r4, #8]
	ldr	r3, [r8]
	sub	r2, r1, r2
	sub	r3, r0, r3
	tst	ip, #256
	str	r2, [r4, #12]
	str	r3, [r4, #16]
	bne	.L67
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L68
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L84
.L67:
	cmp	r6, #1
	add	r4, r4, #48
	bne	.L75
.L86:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L65:
	ldrh	r3, [r7, #48]
	ands	r3, r3, #256
	streq	r3, [r4, #44]
	streq	r3, [r5, #24]
	beq	.L67
	ldr	r2, [r5, #40]
	ldr	r3, [r5, #56]
	ldr	r1, [r5, #4]
	cmp	r2, #0
	add	r3, r3, r1
	beq	.L85
	cmp	r2, #1
	ldrne	r2, [r4, #28]
	addne	r2, r2, r2, lsr #31
	subne	r3, r3, r2, asr #1
	str	r3, [r4, #8]
.L72:
	ldr	r2, [r5, #60]
	ldr	r3, [r5]
	ldr	r1, [r9]
	add	r3, r3, r2
	ldr	r0, [r8]
	ldr	r2, [r4, #8]
	sub	r1, r3, r1
	sub	r2, r2, r0
	cmp	r6, #1
	str	r3, [r4, #4]
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	add	r4, r4, #48
	beq	.L86
.L75:
	mov	r6, #1
	b	.L74
.L85:
	ldr	r2, [r4, #28]
	add	r2, r2, #3
	sub	r3, r3, r2
	str	r3, [r4, #8]
	b	.L72
.L68:
	cmp	r3, #1
	bne	.L67
	ldr	r3, [r4, #36]
	cmp	r3, #1
	str	r3, [sp, #20]
	bne	.L67
	mov	ip, #7
	ldr	r3, [r5, #60]
	ldr	r2, [r5]
	ldr	lr, [r5, #56]
	add	r2, r2, r3
	ldr	r3, [r5, #4]
	add	r3, r3, lr
	sub	r2, r2, #2
	sub	r3, r3, #2
	str	r2, [sp, #4]
	str	r10, [sp, #12]
	str	r3, [sp]
	str	ip, [sp, #8]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	ldrne	r3, [sp, #20]
	strne	r3, [r5, #24]
	strne	r3, [r4, #44]
	b	.L67
.L84:
	mov	ip, #7
	ldr	r3, [r5, #60]
	ldr	r2, [r5]
	ldr	lr, [r5, #56]
	add	r2, r2, r3
	ldr	r3, [r5, #4]
	add	r3, r3, lr
	sub	r2, r2, #2
	sub	r3, r3, #2
	str	r2, [sp, #4]
	str	r10, [sp, #12]
	str	r3, [sp]
	str	ip, [sp, #8]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r5, #24]
	strne	r3, [r4, #44]
	b	.L67
.L88:
	.align	2
.L87:
	.word	objects
	.word	67109120
	.word	goose
	.word	voff
	.word	hoff
	.word	collision
	.size	updateObjects, .-updateObjects
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
	push	{r4, lr}
	bl	updateGoose
	bl	updateObjects
	ldr	r2, .L96
	ldr	r3, [r2]
	cmp	r3, #256
	ble	.L90
	ldr	ip, .L96+4
	ldr	r1, [ip]
	cmp	r1, #17
	ble	.L95
.L91:
	ldr	r2, .L96+8
	ldr	r3, [r2]
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	bgt	.L89
	cmp	r3, #0
	addlt	r3, r3, #512
	strlt	r3, [r2]
.L89:
	pop	{r4, lr}
	bx	lr
.L90:
	cmp	r3, #0
	bge	.L91
	ldr	ip, .L96+4
	ldr	r1, [ip]
	cmp	r1, #16
	ble	.L91
	mov	lr, #67108864
	sub	r1, r1, #1
	lsl	r0, r1, #24
	orr	r0, r0, #1073741824
	orr	r0, r0, #262144
	lsr	r0, r0, #16
	add	r3, r3, #256
	str	r1, [ip]
	str	r3, [r2]
	strh	r0, [lr, #8]	@ movhi
	b	.L91
.L95:
	mov	lr, #67108864
	add	r0, r1, #1
	lsl	r1, r0, #24
	orr	r1, r1, #1073741824
	orr	r1, r1, #262144
	lsr	r1, r1, #16
	sub	r3, r3, #256
	str	r0, [ip]
	str	r3, [r2]
	strh	r1, [lr, #8]	@ movhi
	b	.L91
.L97:
	.align	2
.L96:
	.word	hoff
	.word	sb
	.word	gooseHoff
	.size	updateGame, .-updateGame
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
	ldr	r2, .L106
	ldr	r1, [r2, #12]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #52]
	ldr	r3, [r2, #28]
	ldr	ip, .L106+4
	push	{r4, r5, lr}
	ldr	r4, [r2, #8]
	lsl	lr, r0, #3
	cmp	r3, #2
	add	r0, ip, r0, lsl #3
	strh	r4, [ip, lr]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	ldrh	r1, [r2, #40]
	beq	.L99
	ldr	r4, [r2, #32]
	lsl	r3, r3, #16
	cmp	r4, #2
	lsr	r3, r3, #16
	beq	.L105
	cmp	r4, #1
	beq	.L102
	ldr	r0, [r2, #36]
.L101:
	lsl	r3, r3, #2
	add	r3, r3, r1, lsl #5
	add	r3, r3, #2
	add	r3, r3, r0
	add	r2, ip, lr
	lsl	r3, r3, #2
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L105:
	ldr	r4, .L106+8
	ldr	r0, [r4]
	add	r0, r0, #1
	cmp	r0, #6
	str	r0, [r4]
	ldr	r0, [r2, #36]
	ble	.L101
	rsbs	r0, r0, #1
	movcc	r0, #0
	mov	r5, #0
	str	r0, [r2, #36]
	str	r5, [r4]
	b	.L101
.L99:
	lsl	r3, r1, #3
	add	r3, r3, #516
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L102:
	add	r3, r3, r1, lsl #3
	lsl	r3, r3, #4
	add	r3, r3, #4
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L107:
	.align	2
.L106:
	.word	goose
	.word	shadowOAM
	.word	anicounter
	.size	drawGoose, .-drawGoose
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
	bl	drawGoose
	mov	r2, #640
	mov	ip, #67108864
	ldr	r3, .L110
	ldr	r0, .L110+4
	ldr	r1, [r3, #40]
	ldr	r5, [r3, #12]
	ldr	lr, .L110+8
	lsl	r4, r1, #3
	add	r1, r0, r1, lsl #3
	ldrh	lr, [lr]
	strh	r5, [r0, r4]	@ movhi
	ldr	r4, [r3, #16]
	strh	r2, [r1, #4]	@ movhi
	ldr	r2, [r3, #88]
	ldr	r5, [r3, #60]
	strh	r4, [r1, #2]	@ movhi
	ldr	r1, [r3, #64]
	lsl	r4, r2, #3
	add	r3, r0, r2, lsl #3
	ldr	r2, .L110+12
	strh	r5, [r0, r4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L110+16
	ldrh	r3, [r3]
	strh	lr, [ip, #18]	@ movhi
	strh	r3, [ip, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L111:
	.align	2
.L110:
	.word	objects
	.word	shadowOAM
	.word	voff
	.word	641
	.word	hoff
	.size	drawGame, .-drawGame
	.align	2
	.global	drawHuman
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHuman, %function
drawHuman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawHuman, .-drawHuman
	.align	2
	.global	drawObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawObjects, %function
drawObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #640
	ldr	r3, .L115
	ldr	r1, [r3, #40]
	push	{r4, lr}
	ldr	r0, .L115+4
	ldr	r4, [r3, #12]
	lsl	lr, r1, #3
	ldr	r2, [r3, #88]
	strh	r4, [r0, lr]	@ movhi
	ldr	lr, [r3, #16]
	add	r1, r0, r1, lsl #3
	add	r4, r3, #60
	strh	ip, [r1, #4]	@ movhi
	ldm	r4, {r4, ip}
	strh	lr, [r1, #2]	@ movhi
	ldr	r1, .L115+8
	lsl	lr, r2, #3
	add	r3, r0, r2, lsl #3
	strh	r4, [r0, lr]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	objects
	.word	shadowOAM
	.word	641
	.size	drawObjects, .-drawObjects
	.align	2
	.global	animateGoose
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateGoose, %function
animateGoose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	animateGoose, .-animateGoose
	.align	2
	.global	animateHuman
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateHuman, %function
animateHuman:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	animateHuman, .-animateHuman
	.comm	overallHoff,4,4
	.comm	gooseHoff,4,4
	.comm	anicounter,4,4
	.comm	sb,4,4
	.comm	hoff,4,4
	.comm	voff,4,4
	.comm	cheat,4,4
	.comm	tasks,4,4
	.comm	objects,96,4
	.comm	human,28,4
	.comm	goose,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
