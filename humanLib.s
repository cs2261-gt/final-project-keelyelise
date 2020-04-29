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
	.file	"humanLib.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	chase.part.0, %function
chase.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r5, .L19
	ldr	r1, [r5, #24]
	ldr	r3, .L19+4
	ldr	r4, .L19+8
	cmp	r1, r2
	str	r2, [r3]
	ldr	r0, [r4, #4]
	sub	sp, sp, #16
	beq	.L2
	ldr	r3, [r5, #4]
	cmp	r3, r0
	movgt	r2, #3
	addgt	r0, r0, #1
	strgt	r2, [r4, #40]
	strgt	r0, [r4, #4]
	cmp	r3, r0
	movlt	r2, #2
	strlt	r2, [r4, #40]
	ldr	r2, [r5]
	ldr	r1, [r4]
	sub	ip, r2, #16
	sublt	r0, r0, #1
	strlt	r0, [r4, #4]
	cmp	ip, r1
	movgt	ip, #0
	addgt	r1, r1, #1
	strgt	ip, [r4, #40]
	sub	ip, r2, #15
	strgt	r1, [r4]
	cmp	ip, r1
	movle	ip, #1
	strle	ip, [r4, #40]
	add	ip, r5, #16
	ldm	ip, {ip, lr}
	suble	r1, r1, #1
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r2, #32
	mov	r3, #64
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r6, .L19+12
	strle	r1, [r4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L1
	mov	r3, #1
	mov	r2, #0
	str	r3, [r4, #60]
	str	r2, [r5, #24]
	str	r3, [r4, #56]
.L1:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L2:
	ldr	r5, .L19+16
	ldr	r3, [r5]
	ldr	r2, [r3, #8]
	cmp	r2, r0
	movgt	r1, #3
	addgt	r0, r0, #1
	strgt	r1, [r4, #40]
	strgt	r0, [r4, #4]
	cmp	r2, r0
	movlt	r1, #2
	ldr	ip, [r3, #4]
	strlt	r1, [r4, #40]
	ldr	r1, [r4]
	sub	lr, ip, #16
	sublt	r0, r0, #1
	strlt	r0, [r4, #4]
	cmp	lr, r1
	movgt	lr, #0
	addgt	r1, r1, #1
	strgt	lr, [r4, #40]
	sub	lr, ip, #15
	strgt	r1, [r4]
	cmp	lr, r1
	movle	lr, #1
	strle	lr, [r4, #40]
	ldr	lr, [r3, #32]
	str	lr, [sp, #12]
	ldr	r3, [r3, #28]
	suble	r1, r1, #1
	stm	sp, {r2, ip}
	str	r3, [sp, #8]
	mov	r2, #32
	mov	r3, #64
	ldr	r6, .L19+12
	strle	r1, [r4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #1
	ldrne	r2, [r5]
	strne	r3, [r4, #60]
	strne	r3, [r2, #40]
	strne	r3, [r4, #56]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	goose
	.word	stepTimer
	.word	human
	.word	collision
	.word	stolenObject
	.size	chase.part.0, .-chase.part.0
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
	push	{r4, r5, r6, lr}
	mvn	r6, #0
	mov	r2, #0
	mov	r5, #300
	mov	r4, #112
	mov	lr, #144
	mov	r1, #40
	mov	ip, #20
	mov	r0, #5
	ldr	r3, .L23
	str	r6, [r3]
	ldr	r3, .L23+4
	str	r2, [r3]
	ldr	r3, .L23+8
	str	r2, [r3]
	ldr	r3, .L23+12
	str	r2, [r3]
	ldr	r3, .L23+16
	str	r2, [r3]
	ldr	r3, .L23+20
	str	r2, [r3]
	ldr	r3, .L23+24
	str	r5, [r3, #4]
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	ip, [r3, #36]
	str	r0, [r3, #56]
	str	r1, [r3]
	str	r1, [r3, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	walkDir
	.word	hatTimer
	.word	aniTimer
	.word	aninum
	.word	stepTimer
	.word	savedDir
	.word	human
	.size	initHuman, .-initHuman
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
	ldr	r0, .L39
	ldr	r3, [r0, #32]
	cmp	r3, #1
	str	lr, [sp, #-4]!
	beq	.L26
	ldr	ip, .L39+4
.L27:
	ldr	r3, [r0, #4]
	add	r2, r3, #255
	cmp	r3, #0
	movlt	r3, r2
	ldr	r2, .L39+8
	asr	r3, r3, #8
	ldr	r1, [r2]
	add	r3, r3, #28
	cmp	r1, r3
	ldr	r2, [r0, #36]
	beq	.L29
	add	r1, r1, #1
	cmp	r1, r3
	beq	.L29
	mov	r3, #512
	ldr	r1, .L39+12
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
	b	.L31
.L29:
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L39+12
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
.L31:
	ldr	r3, [r0, #12]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	lr, [r0, #40]
	add	r1, r1, r2
	ldr	r2, [ip]
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, [r0, #28]
	cmp	lr, #0
	add	r2, r2, r3, lsl #1
	bne	.L32
	add	r2, r2, #128
	lsl	r2, r2, #2
	strh	r2, [r1, #4]	@ movhi
.L25:
	ldr	lr, [sp], #4
	bx	lr
.L32:
	cmp	lr, #1
	addeq	r2, r2, #132
	lsleq	r2, r2, #2
	strheq	r2, [r1, #4]	@ movhi
	beq	.L25
	cmp	lr, #2
	addeq	r2, r2, #192
	addne	r2, r2, #196
	lsl	r2, r2, #2
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L26:
	ldr	ip, .L39+16
	ldr	r2, [ip]
	ldr	r3, .L39+20
	add	r2, r2, #1
	smull	lr, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	cmp	r3, #0
	str	r3, [ip]
	ldr	ip, .L39+4
	bne	.L27
	ldr	r3, [ip]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [ip]
	b	.L27
.L40:
	.align	2
.L39:
	.word	human
	.word	aninum
	.word	sb
	.word	shadowOAM
	.word	aniTimer
	.word	1717986919
	.size	drawHuman, .-drawHuman
	.align	2
	.global	chase
	.syntax unified
	.arm
	.fpu softvfp
	.type	chase, %function
chase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	ldr	r2, .L43
	ldr	r3, [r2]
	ldr	r1, .L43+4
	add	r3, r3, r0
	cmp	r3, r0
	str	r3, [r2]
	str	r0, [r1, #32]
	bxle	lr
	b	chase.part.0
.L44:
	.align	2
.L43:
	.word	stepTimer
	.word	human
	.size	chase, .-chase
	.align	2
	.global	returnObject
	.syntax unified
	.arm
	.fpu softvfp
	.type	returnObject, %function
returnObject:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L72
	ldr	r2, [r3, #60]
	cmp	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r2, [r3]
	beq	.L46
	ldr	r1, .L72+4
	ldr	r0, [r1]
	ldr	r1, [r0]
	cmp	r1, #2
	cmpne	r1, #9
	movne	ip, #1
	moveq	ip, #0
	bne	.L68
	cmp	r1, #2
	beq	.L69
	cmp	r1, #9
	beq	.L70
.L46:
	cmp	r2, #80
	beq	.L61
	cmp	r2, #79
	movle	r1, #0
	movgt	r1, #1
	addle	r2, r2, #1
	subgt	r2, r2, #1
	str	r2, [r3]
	str	r1, [r3, #40]
.L45:
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	ldr	ip, [r0, #24]
	ldr	r1, [r3, #4]
	cmp	ip, r1
	movgt	lr, #3
	addgt	r1, r1, #1
	strgt	lr, [r3, #40]
	strgt	r1, [r3, #4]
	cmp	ip, r1
	movlt	lr, #2
	strlt	lr, [r3, #40]
	ldr	lr, [r0, #20]
	sublt	r1, r1, #1
	strlt	r1, [r3, #4]
	cmp	lr, r2
	movgt	r4, #0
	addgt	r2, r2, #1
	strgt	r2, [r3]
	strgt	r4, [r3, #40]
	cmp	lr, r2
	movlt	r4, #1
	sublt	r2, r2, #1
	strlt	r2, [r3]
	strlt	r4, [r3, #40]
	cmp	ip, r1
	bne	.L45
	ldr	r2, [r3]
	cmp	lr, r2
	bne	.L45
	mov	r4, #0
	ldr	r1, .L72+8
	ldr	r2, .L72+12
	ldr	r1, [r1]
	ldr	r2, [r2]
	sub	r1, lr, r1
	sub	r2, ip, r2
	str	r4, [r3, #60]
	str	r1, [r0, #12]
	str	r4, [r0, #40]
	str	lr, [r0, #4]
	str	ip, [r0, #8]
	str	r2, [r0, #16]
	b	.L45
.L61:
	mov	r2, #5
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #56]
	bx	lr
.L70:
	ldr	r4, .L72+12
	ldr	lr, .L72+8
	ldr	r5, [r4]
	ldr	r4, [lr]
	ldr	lr, [r3, #4]
	str	ip, [r3, #60]
	add	lr, lr, #19
	add	r2, r2, #40
	ldr	r3, .L72+16
	sub	r5, lr, r5
	sub	r4, r2, r4
	stmib	r0, {r2, lr}
	str	r5, [r0, #16]
	str	r4, [r0, #12]
	str	ip, [r0, #40]
	str	r1, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	ldr	r6, .L72+20
	ldr	r4, [r6]
	cmp	r4, #3
	ldr	lr, [r3, #4]
	beq	.L71
	ldr	r5, .L72+8
	ldr	r4, .L72+12
	ldr	r5, [r5]
	ldr	r4, [r4]
	add	lr, lr, #8
	sub	r2, r2, #1
	sub	r5, r2, r5
	sub	r4, lr, r4
	str	ip, [r3, #60]
	str	r1, [r6]
	stmib	r0, {r2, lr}
	str	r5, [r0, #12]
	str	r4, [r0, #16]
	str	ip, [r0, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	ldr	r1, [r0, #24]
	cmp	r1, lr
	addgt	lr, lr, #1
	strgt	r4, [r3, #40]
	strgt	lr, [r3, #4]
	cmp	lr, r1
	movgt	ip, #2
	strgt	ip, [r3, #40]
	ldr	ip, [r0, #20]
	subgt	lr, lr, #1
	strgt	lr, [r3, #4]
	cmp	ip, r2
	movgt	r4, #0
	addgt	r2, r2, #1
	strgt	r2, [r3]
	strgt	r4, [r3, #40]
	cmp	ip, r2
	movlt	r4, #1
	sublt	r2, r2, #1
	strlt	r2, [r3]
	strlt	r4, [r3, #40]
	cmp	r1, lr
	bne	.L45
	ldr	r2, [r3]
	cmp	ip, r2
	bne	.L45
	mov	r4, #0
	ldr	lr, .L72+8
	ldr	r2, .L72+12
	ldr	lr, [lr]
	ldr	r2, [r2]
	sub	lr, ip, lr
	sub	r2, r1, r2
	str	r4, [r3, #60]
	str	lr, [r0, #12]
	str	r4, [r0, #40]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r2, [r0, #16]
	b	.L45
.L73:
	.align	2
.L72:
	.word	human
	.word	stolenObject
	.word	voff
	.word	gooseHoff
	.word	keyIndex
	.word	hatIndex
	.size	returnObject, .-returnObject
	.align	2
	.global	openFrontGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	openFrontGate, %function
openFrontGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1
	ldr	r1, .L85
	ldr	r3, [r1]
	ldr	r2, .L85+4
	add	r3, r3, r0
	cmp	r3, r0
	str	r3, [r1]
	str	r0, [r2, #32]
	bxle	lr
	mov	r0, #0
	ldr	r3, [r2, #4]
	ldr	ip, .L85+8
	cmp	r3, ip
	str	r0, [r1]
	ble	.L77
	ldr	r1, [r2]
	sub	r3, r3, #1
	cmp	r1, #70
	str	r3, [r2, #4]
	ble	.L78
	sub	r1, r1, #1
	str	r1, [r2]
	bx	lr
.L77:
	bxne	lr
	ldr	r3, [r2]
	cmp	r3, #70
	beq	.L80
	subgt	r3, r3, #1
	addle	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L78:
	addne	r1, r1, #1
	strne	r1, [r2]
	bx	lr
.L80:
	push	{r4, lr}
	mov	r1, #4
	mov	lr, #28
	mov	ip, #44
	ldr	r3, .L85+12
	ldr	r4, .L85+16
	str	lr, [r3, #688]
	str	r1, [r4]
	str	r0, [r2, #56]
	str	r1, [r3, #692]
	str	ip, [r3, #644]
	pop	{r4, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	stepTimer
	.word	human
	.word	422
	.word	objects
	.word	tasks
	.size	openFrontGate, .-openFrontGate
	.align	2
	.global	openBackGate
	.syntax unified
	.arm
	.fpu softvfp
	.type	openBackGate, %function
openBackGate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	openBackGate, .-openBackGate
	.align	2
	.global	gardening
	.syntax unified
	.arm
	.fpu softvfp
	.type	gardening, %function
gardening:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L130
	ldr	r3, [r4, #4]
	cmp	r3, #440
	ldr	r1, [r4]
	sub	sp, sp, #16
	beq	.L89
	mov	r2, #0
	mov	r0, #1
	str	r2, [r4, #28]
	movlt	r2, #3
	movge	r2, #2
	addlt	r3, r3, r0
	subge	r3, r3, #1
	cmp	r1, #79
	str	r0, [r4, #32]
	str	r3, [r4, #4]
	str	r2, [r4, #40]
	bgt	.L92
	mov	r2, #0
	add	r1, r1, #1
	str	r1, [r4]
	str	r2, [r4, #40]
.L89:
	ldr	r5, .L130+4
	ldr	r2, [r5, #20]
	ldr	lr, [r5, #16]
	str	r2, [sp, #12]
	ldr	ip, [r5]
	ldr	r2, [r5, #4]
	stm	sp, {r2, ip, lr}
	ldr	r0, [r4, #16]
	add	r2, r4, #20
	sub	r1, r1, r0
	ldr	r6, .L130+8
	sub	r0, r3, r0
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L93
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L127
.L94:
	mov	r3, #0
	ldr	r2, [r5, #24]
	cmp	r2, r3
	str	r3, [r4, #28]
	streq	r2, [r4, #32]
	beq	.L98
	ldr	r2, .L130+12
	ldr	r2, [r2]
	cmp	r2, #5
	str	r3, [r4, #48]
	strne	r3, [r4, #56]
	bne	.L98
	ldr	r3, .L130+16
	ldr	r3, [r3]
	ldr	r3, [r3]
	bic	r2, r3, #2
	cmp	r3, #0
	cmpne	r2, #5
	moveq	r3, #2
	streq	r3, [r4, #56]
.L98:
	ldr	r3, [r4]
	ldr	r2, [r5]
	cmp	r2, r3
	movgt	r3, #0
	strgt	r3, [r4, #40]
	bgt	.L88
	movlt	r3, #1
	strlt	r3, [r4, #40]
	blt	.L88
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	cmp	r2, r3
	movgt	r3, #3
	movle	r3, #2
	str	r3, [r4, #40]
.L88:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	cmp	r1, #80
	movne	r2, #1
	subne	r1, r1, #1
	strne	r1, [r4]
	strne	r2, [r4, #40]
	b	.L89
.L127:
	ldr	r3, .L130+20
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L94
	mov	r1, #1
	ldr	r3, [r4, #48]
	cmp	r3, #0
	str	r1, [r4, #32]
	bne	.L103
	ldr	r0, .L130+24
	ldr	r2, [r0]
	cmp	r2, #0
	movgt	ip, #0
	movle	ip, #1
	ldr	lr, [r4]
	add	r2, r2, lr
	cmp	r2, #6
	str	ip, [r4, #40]
	str	r3, [r4, #28]
	str	r2, [r4]
	streq	r1, [r0]
	streq	r1, [r4, #40]
	streq	r1, [r4, #48]
	beq	.L88
	cmp	r2, #136
	mvneq	r2, #0
	streq	r3, [r4, #40]
	streq	r1, [r4, #48]
	streq	r2, [r0]
	b	.L88
.L93:
	mov	r2, #1
	ldr	r3, [r4, #48]
	cmp	r3, #0
	str	r2, [r4, #32]
	bne	.L107
	ldr	r3, .L130+28
	ldr	r3, [r3]
	cmp	r3, #50
	beq	.L128
.L108:
	mov	r2, #0
	ldr	r1, .L130+24
	ldr	r3, [r1]
	cmp	r3, r2
	str	r2, [r4, #28]
	movle	r2, #1
	ldr	r0, [r4]
	add	r3, r3, r0
	ldr	r0, .L130+32
	cmp	r3, #6
	str	r3, [r4]
	str	r2, [r4, #40]
	str	r2, [r0]
	beq	.L129
	cmp	r3, #136
	bne	.L88
	mov	r3, #0
	mvn	ip, #0
	mov	r2, #1
	str	ip, [r1]
	str	r3, [r4, #40]
	str	r3, [r0]
	str	r2, [r4, #48]
	b	.L88
.L107:
	ldr	r1, .L130+32
	add	r3, r3, #1
	ldr	r1, [r1]
	cmp	r3, #249
	str	r3, [r4, #48]
	str	r2, [r4, #28]
	str	r1, [r4, #40]
	ble	.L88
.L112:
	mov	r3, #0
	str	r3, [r4, #48]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L129:
	mov	r3, #1
	str	r3, [r1]
	str	r3, [r4, #40]
	str	r3, [r0]
	str	r3, [r4, #48]
	b	.L88
.L128:
	ldr	r3, .L130+12
	ldr	r3, [r3]
	cmp	r3, #3
	moveq	r3, #6
	streq	r3, [r4, #56]
	b	.L108
.L103:
	add	r3, r3, #1
	cmp	r3, #249
	str	r3, [r4, #48]
	str	r1, [r4, #28]
	ble	.L88
	b	.L112
.L131:
	.align	2
.L130:
	.word	human
	.word	goose
	.word	collision
	.word	tasks
	.word	stolenObject
	.word	honkTimer
	.word	walkDir
	.word	hatIndex
	.word	savedDir
	.size	gardening, .-gardening
	.align	2
	.global	performCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	performCheat, %function
performCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	performCheat, .-performCheat
	.align	2
	.global	replaceHat
	.syntax unified
	.arm
	.fpu softvfp
	.type	replaceHat, %function
replaceHat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #3
	mov	ip, #0
	mov	r0, #1
	ldr	r1, .L149
	push	{r4, lr}
	ldr	lr, [r1]
	ldr	r3, .L149+4
	cmp	lr, r2
	str	r2, [r3, #40]
	str	ip, [r3, #28]
	str	r0, [r3, #32]
	ldr	r2, [r3, #4]
	beq	.L147
	mov	r0, #2
	ldr	r1, [r3]
	cmp	r1, #136
	subgt	r1, r1, #1
	str	r0, [r3, #40]
	strgt	r1, [r3]
	ble	.L148
.L143:
	cmp	r2, #580
	movle	r2, #5
	subgt	r2, r2, #1
	strgt	r2, [r3, #4]
	strle	r2, [r3, #56]
.L133:
	pop	{r4, lr}
	bx	lr
.L148:
	addne	r1, r1, #1
	strne	r1, [r3]
	b	.L143
.L147:
	add	r0, r0, #868
	cmp	r2, r0
	bgt	.L135
	add	r2, r2, #1
	cmp	r2, #760
	str	r2, [r3, #4]
	ldr	r0, [r3]
	ble	.L136
	cmp	r0, #180
	subgt	r0, r0, #1
	strgt	r0, [r3]
	bgt	.L135
	beq	.L138
	add	r0, r0, #1
	str	r0, [r3]
.L135:
	ldr	r0, .L149+8
	cmp	r2, r0
	bne	.L133
	ldr	r3, [r3]
	cmp	r3, #180
	bne	.L133
.L145:
	mov	r3, #2
	mov	r4, #3
	mov	ip, #178
	mov	r0, #916
	mov	r2, #196
	str	r3, [r1]
	ldr	lr, .L149+12
	ldr	r3, .L149+16
	ldr	r1, .L149+20
	str	r4, [lr]
	str	ip, [r3, #196]
	str	r1, [r3, #200]
	str	r0, [r3, #152]
	str	r2, [r3, #148]
	b	.L133
.L136:
	cmp	r0, #136
	subgt	r0, r0, #1
	strgt	r0, [r3]
	bgt	.L133
	addne	r0, r0, #1
	strne	r0, [r3]
	b	.L133
.L138:
	ldr	r3, .L149+8
	cmp	r2, r3
	bne	.L133
	b	.L145
.L150:
	.align	2
.L149:
	.word	tasks
	.word	human
	.word	870
	.word	hatIndex
	.word	objects
	.word	878
	.size	replaceHat, .-replaceHat
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
	push	{r4, lr}
	ldr	r4, .L166
	ldr	r3, [r4, #56]
	cmp	r3, #5
	beq	.L161
	cmp	r3, #0
	beq	.L162
	cmp	r3, #1
	beq	.L163
	cmp	r3, #2
	beq	.L164
	cmp	r3, #6
	beq	.L165
.L153:
	ldr	r3, .L166+4
	ldr	r3, [r3]
	cmn	r3, #1
	moveq	r3, #4
	ldr	r2, .L166+8
	streq	r3, [r4, #56]
	ldr	r3, .L166+12
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, lr}
	bx	lr
.L162:
	mov	r1, #1
	ldr	r2, .L166+16
	ldr	r3, [r2]
	add	r3, r3, r1
	cmp	r3, r1
	str	r3, [r2]
	str	r1, [r4, #32]
	ble	.L153
	bl	chase.part.0
	b	.L153
.L161:
	bl	gardening
	b	.L153
.L163:
	bl	returnObject
	b	.L153
.L164:
	bl	openFrontGate
	b	.L153
.L165:
	bl	replaceHat
	b	.L153
.L167:
	.align	2
.L166:
	.word	human
	.word	tasks
	.word	voff
	.word	gooseHoff
	.word	stepTimer
	.size	updateHuman, .-updateHuman
	.comm	savedDir,4,4
	.comm	stepTimer,4,4
	.comm	aninum,4,4
	.comm	aniTimer,4,4
	.comm	hatTimer,4,4
	.comm	walkDir,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
