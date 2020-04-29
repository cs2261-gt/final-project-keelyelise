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
	.global	initHuman
	.arch armv4t
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
	ldr	r3, .L4
	str	r6, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	r2, [r3]
	ldr	r3, .L4+16
	str	r2, [r3]
	ldr	r3, .L4+20
	str	r2, [r3]
	ldr	r3, .L4+24
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
.L5:
	.align	2
.L4:
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
	ldr	r0, .L20
	ldr	r3, [r0, #32]
	cmp	r3, #1
	str	lr, [sp, #-4]!
	beq	.L7
	ldr	ip, .L20+4
.L8:
	ldr	r3, [r0, #4]
	add	r2, r3, #255
	cmp	r3, #0
	movlt	r3, r2
	ldr	r2, .L20+8
	asr	r3, r3, #8
	ldr	r1, [r2]
	add	r3, r3, #28
	cmp	r1, r3
	ldr	r2, [r0, #36]
	beq	.L10
	add	r1, r1, #1
	cmp	r1, r3
	beq	.L10
	mov	r3, #512
	ldr	r1, .L20+12
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
	b	.L12
.L10:
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L20+12
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
.L12:
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
	bne	.L13
	add	r2, r2, #128
	lsl	r2, r2, #2
	strh	r2, [r1, #4]	@ movhi
.L6:
	ldr	lr, [sp], #4
	bx	lr
.L13:
	cmp	lr, #1
	addeq	r2, r2, #132
	lsleq	r2, r2, #2
	strheq	r2, [r1, #4]	@ movhi
	beq	.L6
	cmp	lr, #2
	addeq	r2, r2, #192
	addne	r2, r2, #196
	lsl	r2, r2, #2
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L7:
	ldr	ip, .L20+16
	ldr	r2, [ip]
	ldr	r3, .L20+20
	add	r2, r2, #1
	smull	lr, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	cmp	r3, #0
	str	r3, [ip]
	ldr	ip, .L20+4
	bne	.L8
	ldr	r3, [ip]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [ip]
	b	.L8
.L21:
	.align	2
.L20:
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
	mov	r1, #1
	push	{r4, r5, r6, lr}
	ldr	r2, .L39
	ldr	r5, .L39+4
	ldr	r3, [r2]
	ldr	r0, [r5, #24]
	ldr	r4, .L39+8
	add	r3, r3, r1
	cmp	r0, #0
	str	r1, [r4, #32]
	str	r3, [r2]
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	sub	sp, sp, #16
	beq	.L23
	cmp	r3, #1
	ldr	ip, [r5]
	ldr	r3, [r5, #4]
	ble	.L24
	mov	lr, #0
	cmp	r3, r0
	str	lr, [r2]
	movgt	r2, #3
	addgt	r0, r0, #1
	strgt	r2, [r4, #40]
	strgt	r0, [r4, #4]
	cmp	r0, r3
	movgt	r2, #2
	subgt	r0, r0, #1
	strgt	r2, [r4, #40]
	strgt	r0, [r4, #4]
	cmp	r1, ip
	movlt	r2, #0
	addlt	r1, r1, #1
	strlt	r1, [r4]
	strlt	r2, [r4, #40]
	cmp	ip, r1
	movlt	r2, #1
	sublt	r1, r1, #1
	strlt	r1, [r4]
	strlt	r2, [r4, #40]
.L24:
	add	r2, r5, #16
	ldm	r2, {r2, lr}
	ldr	r6, .L39+12
	stm	sp, {r3, ip}
	str	r2, [sp, #8]
	mov	r3, #64
	mov	r2, #32
	str	lr, [sp, #12]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L22
	mov	r3, #1
	mov	r2, #0
	str	r3, [r4, #60]
	str	r2, [r5, #24]
	str	r3, [r4, #56]
.L22:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	ldr	r3, .L39+16
	ldr	r2, [r3, #8]
	cmp	r2, r0
	addgt	r0, r0, #1
	ldr	ip, [r3, #4]
	strgt	r0, [r4, #4]
	cmp	r2, r0
	sublt	r0, r0, #1
	strlt	r0, [r4, #4]
	add	r3, r3, #28
	cmp	ip, r1
	ldm	r3, {r3, lr}
	addgt	r1, r1, #1
	strgt	r1, [r4]
	cmp	ip, r1
	sublt	r1, r1, #1
	stm	sp, {r2, ip}
	str	r3, [sp, #8]
	mov	r2, #32
	mov	r3, #64
	str	lr, [sp, #12]
	ldr	r5, .L39+12
	strlt	r1, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #60]
	strne	r3, [r4, #56]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	stepTimer
	.word	goose
	.word	human
	.word	collision
	.word	stolenObject
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
	@ link register save eliminated.
	ldr	r3, .L50
	ldr	r1, [r3, #60]
	cmp	r1, #0
	ldr	r2, [r3]
	beq	.L42
	ldr	ip, .L50+4
	ldr	r1, [r3, #4]
	ldr	r0, [ip, #24]
	cmp	r0, r1
	addgt	r1, r1, #1
	strgt	r1, [r3, #4]
	ldr	ip, [ip, #20]
	cmp	r1, r0
	subgt	r1, r1, #1
	strgt	r1, [r3, #4]
	cmp	r2, ip
	addlt	r2, r2, #1
	strlt	r2, [r3]
	cmp	ip, r2
	sublt	r2, r2, #1
	strlt	r2, [r3]
	cmp	r0, r1
	bxne	lr
	ldr	r2, [r3]
	cmp	ip, r2
	moveq	r2, #0
	streq	r2, [r3, #60]
	bx	lr
.L42:
	cmp	r2, #70
	beq	.L48
	cmp	r2, #69
	movgt	r1, #1
	addle	r2, r2, #1
	subgt	r2, r2, #1
	str	r2, [r3]
	str	r1, [r3, #40]
	bx	lr
.L48:
	mov	r2, #5
	str	r2, [r3, #56]
	bx	lr
.L51:
	.align	2
.L50:
	.word	human
	.word	stolenObject
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
	ldr	r1, .L63
	ldr	r3, [r1]
	ldr	r2, .L63+4
	add	r3, r3, r0
	cmp	r3, r0
	str	r3, [r1]
	str	r0, [r2, #32]
	bxle	lr
	mov	r0, #0
	ldr	r3, [r2, #4]
	ldr	ip, .L63+8
	cmp	r3, ip
	str	r0, [r1]
	ble	.L55
	ldr	r1, [r2]
	sub	r3, r3, #1
	cmp	r1, #70
	str	r3, [r2, #4]
	ble	.L56
	sub	r1, r1, #1
	str	r1, [r2]
	bx	lr
.L55:
	bxne	lr
	ldr	r3, [r2]
	cmp	r3, #70
	beq	.L58
	subgt	r3, r3, #1
	addle	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L56:
	addne	r1, r1, #1
	strne	r1, [r2]
	bx	lr
.L58:
	push	{r4, lr}
	mov	ip, #28
	mov	r4, #4
	mov	r1, #44
	ldr	lr, .L63+12
	ldr	r3, .L63+16
	str	r4, [lr]
	str	r0, [r2, #56]
	str	ip, [r3, #688]
	str	r1, [r3, #644]
	pop	{r4, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	stepTimer
	.word	human
	.word	422
	.word	tasks
	.word	objects
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
	ldr	r4, .L104
	ldr	r3, [r4, #4]
	cmp	r3, #440
	ldr	r1, [r4]
	sub	sp, sp, #16
	beq	.L67
	addlt	r3, r3, #1
	subge	r3, r3, #1
	cmp	r1, #99
	addle	r1, r1, #1
	str	r3, [r4, #4]
	strle	r1, [r4]
	bgt	.L101
.L67:
	ldr	r5, .L104+4
	ldr	r2, [r5, #20]
	ldr	lr, [r5, #16]
	str	r2, [sp, #12]
	ldr	ip, [r5]
	ldr	r2, [r5, #4]
	stm	sp, {r2, ip, lr}
	ldr	r0, [r4, #16]
	add	r2, r4, #20
	sub	r1, r1, r0
	ldr	r6, .L104+8
	sub	r0, r3, r0
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L71
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L102
.L72:
	mov	r2, #0
	ldr	r3, [r5, #24]
	cmp	r3, r2
	str	r2, [r4, #28]
	streq	r3, [r4, #32]
	beq	.L76
	ldr	r3, .L104+12
	ldr	r3, [r3]
	cmp	r3, r2
	str	r2, [r4, #48]
	bne	.L75
	ldr	r3, .L104+16
	ldr	r3, [r3]
	cmp	r3, #5
	moveq	r3, #2
	streq	r3, [r4, #56]
	beq	.L76
.L75:
	mov	r3, #0
	str	r3, [r4, #56]
.L76:
	ldr	r3, [r4]
	ldr	r2, [r5]
	cmp	r2, r3
	movgt	r3, #0
	strgt	r3, [r4, #40]
	bgt	.L66
	movlt	r3, #1
	strlt	r3, [r4, #40]
	blt	.L66
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	cmp	r2, r3
	movgt	r3, #3
	movle	r3, #2
	str	r3, [r4, #40]
.L66:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	cmp	r1, #100
	subne	r1, r1, #1
	strne	r1, [r4]
	b	.L67
.L102:
	ldr	r3, .L104+20
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L72
	mov	r1, #1
	ldr	r3, [r4, #48]
	cmp	r3, #0
	str	r1, [r4, #32]
	bne	.L81
	ldr	r0, .L104+24
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
	beq	.L66
	cmp	r2, #136
	mvneq	r2, #0
	streq	r3, [r4, #40]
	streq	r1, [r4, #48]
	streq	r2, [r0]
	b	.L66
.L71:
	mov	r1, #1
	ldr	r3, [r4, #48]
	cmp	r3, #0
	str	r1, [r4, #32]
	bne	.L85
	ldr	r0, .L104+24
	ldr	ip, [r4]
	ldr	r2, [r0]
	cmp	r2, #0
	add	r2, r2, ip
	ldr	ip, .L104+28
	strgt	r3, [r4, #40]
	strgt	r3, [ip]
	strle	r1, [r4, #40]
	strle	r1, [ip]
	cmp	r2, #6
	str	r3, [r4, #28]
	str	r2, [r4]
	beq	.L103
	cmp	r2, #136
	bne	.L89
	mov	r3, #0
	mvn	r1, #0
	mov	r2, #1
	str	r1, [r0]
	str	r3, [r4, #40]
	str	r3, [ip]
	str	r2, [r4, #48]
.L89:
	ldr	r3, .L104+32
	ldr	r3, [r3]
	cmp	r3, #50
	bne	.L66
	ldr	r3, .L104+16
	ldr	r3, [r3]
	cmp	r3, #3
	moveq	r3, #6
	streq	r3, [r4, #56]
	b	.L66
.L85:
	ldr	r2, .L104+28
	add	r3, r3, #1
	ldr	r2, [r2]
	cmp	r3, #249
	str	r3, [r4, #48]
	str	r1, [r4, #28]
	str	r2, [r4, #40]
	ble	.L66
.L90:
	mov	r3, #0
	str	r3, [r4, #48]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L103:
	mov	r3, #1
	str	r3, [r0]
	str	r3, [r4, #40]
	str	r3, [ip]
	str	r3, [r4, #48]
	b	.L89
.L81:
	add	r3, r3, #1
	cmp	r3, #249
	str	r3, [r4, #48]
	str	r1, [r4, #28]
	ble	.L66
	b	.L90
.L105:
	.align	2
.L104:
	.word	human
	.word	goose
	.word	collision
	.word	stolenObject
	.word	tasks
	.word	honkTimer
	.word	walkDir
	.word	savedDir
	.word	hatIndex
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
	mov	ip, #0
	mov	r0, #1
	mov	r1, #3
	ldr	r3, .L118
	str	lr, [sp, #-4]!
	ldr	r2, [r3, #4]
	ldr	lr, .L118+4
	cmp	r2, lr
	str	ip, [r3, #28]
	str	r0, [r3, #32]
	str	r1, [r3, #40]
	bgt	.L108
	add	r2, r2, r0
	cmp	r2, #760
	str	r2, [r3, #4]
	ldr	r1, [r3]
	ble	.L109
	cmp	r1, #180
	subgt	r1, r1, #1
	strgt	r1, [r3]
	bgt	.L108
	beq	.L111
	add	r1, r1, #1
	str	r1, [r3]
.L108:
	ldr	r1, .L118+8
	cmp	r2, r1
	beq	.L117
.L107:
	ldr	lr, [sp], #4
	bx	lr
.L117:
	ldr	r2, [r3]
	cmp	r2, #180
	bne	.L107
.L115:
	mov	lr, #3
	mov	ip, #178
	mov	r1, #5
	ldr	r0, .L118+12
	ldr	r2, .L118+16
	str	lr, [r0]
	ldr	r0, .L118+20
	str	ip, [r2, #196]
	str	r0, [r2, #200]
	str	r1, [r3, #56]
	ldr	lr, [sp], #4
	bx	lr
.L109:
	cmp	r1, #136
	subgt	r1, r1, #1
	strgt	r1, [r3]
	bgt	.L107
	addne	r1, r1, #1
	strne	r1, [r3]
	b	.L107
.L111:
	ldr	r1, .L118+8
	cmp	r2, r1
	bne	.L107
	b	.L115
.L119:
	.align	2
.L118:
	.word	human
	.word	869
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
	ldr	r4, .L133
	ldr	r3, [r4, #56]
	cmp	r3, #5
	beq	.L128
	cmp	r3, #0
	beq	.L129
	cmp	r3, #1
	beq	.L130
	cmp	r3, #2
	beq	.L131
	cmp	r3, #6
	beq	.L132
.L122:
	ldr	r3, .L133+4
	ldr	r3, [r3]
	cmn	r3, #1
	moveq	r3, #4
	ldr	r2, .L133+8
	streq	r3, [r4, #56]
	ldr	r3, .L133+12
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
.L129:
	bl	chase
	b	.L122
.L128:
	bl	gardening
	b	.L122
.L130:
	bl	returnObject
	b	.L122
.L131:
	bl	openFrontGate
	b	.L122
.L132:
	bl	replaceHat
	b	.L122
.L134:
	.align	2
.L133:
	.word	human
	.word	tasks
	.word	voff
	.word	gooseHoff
	.size	updateHuman, .-updateHuman
	.comm	savedDir,4,4
	.comm	stepTimer,4,4
	.comm	aninum,4,4
	.comm	aniTimer,4,4
	.comm	hatTimer,4,4
	.comm	walkDir,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
