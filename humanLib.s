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
	mov	ip, #1
	mov	r0, #7
	ldr	r3, .L4
	str	r6, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	r2, [r3]
	ldr	r3, .L4+16
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
	ldr	r0, .L18
	ldr	r2, [r0]
	ldr	r3, .L18+4
	add	r2, r2, #1
	smull	ip, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	cmp	r3, #0
	str	lr, [sp, #-4]!
	ldr	r2, .L18+8
	str	r3, [r0]
	bne	.L7
	ldr	r3, [r2]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r2]
.L7:
	ldr	r0, .L18+12
	ldr	r3, [r0, #4]
	add	r1, r3, #255
	cmp	r3, #0
	movlt	r3, r1
	ldr	r1, .L18+16
	asr	r3, r3, #8
	ldr	ip, [r1]
	add	r3, r3, #28
	cmp	ip, r3
	ldr	r1, [r0, #36]
	beq	.L8
	add	ip, ip, #1
	cmp	ip, r3
	beq	.L8
	mov	r3, #512
	ldr	ip, .L18+20
	lsl	r1, r1, #3
	strh	r3, [ip, r1]	@ movhi
	b	.L10
.L8:
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	ip, .L18+20
	lsl	r1, r1, #3
	strh	r3, [ip, r1]	@ movhi
.L10:
	ldr	r3, [r0, #12]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	lr, [r0, #40]
	add	r1, ip, r1
	ldr	r2, [r2]
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, [r0, #28]
	cmp	lr, #0
	add	r2, r2, r3, lsl #1
	bne	.L11
	add	r2, r2, #128
	lsl	r2, r2, #2
	strh	r2, [r1, #4]	@ movhi
.L6:
	ldr	lr, [sp], #4
	bx	lr
.L11:
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
.L19:
	.align	2
.L18:
	.word	aniTimer
	.word	1717986919
	.word	aninum
	.word	human
	.word	sb
	.word	shadowOAM
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
	bx	lr
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
	bx	lr
	.size	returnObject, .-returnObject
	.align	2
	.global	sweat
	.syntax unified
	.arm
	.fpu softvfp
	.type	sweat, %function
sweat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	sweat, .-sweat
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
	@ link register save eliminated.
	bx	lr
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
	.global	turnSprinklerOff
	.syntax unified
	.arm
	.fpu softvfp
	.type	turnSprinklerOff, %function
turnSprinklerOff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	turnSprinklerOff, .-turnSprinklerOff
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
	ldr	r3, .L49
	ldr	r2, [r3, #4]
	cmp	r2, #440
	beq	.L28
	addlt	r2, r2, #1
	subge	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r2, [r3]
	cmp	r2, #99
	addle	r2, r2, #1
	strle	r2, [r3]
	bgt	.L47
.L28:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bne	.L33
	ldr	r0, .L49+4
	ldr	r1, [r0]
	cmp	r1, #0
	movgt	ip, #0
	movle	ip, #1
	str	lr, [sp, #-4]!
	ldr	lr, [r3]
	add	r1, r1, lr
	cmp	r1, #6
	str	r2, [r3, #28]
	str	ip, [r3, #40]
	str	r1, [r3]
	beq	.L48
	cmp	r1, #136
	bne	.L26
	mvn	ip, #0
	mov	r1, #1
	str	r2, [r3, #40]
	str	ip, [r0]
	str	r1, [r3, #48]
.L26:
	ldr	lr, [sp], #4
	bx	lr
.L33:
	mov	r1, #1
	add	r2, r2, r1
	cmp	r2, #249
	movgt	r2, #0
	str	r1, [r3, #28]
	str	r2, [r3, #48]
	bx	lr
.L47:
	cmp	r2, #100
	subne	r2, r2, #1
	strne	r2, [r3]
	b	.L28
.L48:
	mov	r2, #1
	ldr	lr, [sp], #4
	str	r2, [r0]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	bx	lr
.L50:
	.align	2
.L49:
	.word	human
	.word	walkDir
	.size	gardening, .-gardening
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
	ldr	r4, .L56
	ldr	r3, [r4, #56]
	cmp	r3, #7
	beq	.L55
.L52:
	ldr	r3, .L56+4
	ldr	r3, [r3]
	cmp	r3, #3
	moveq	r3, #2
	ldr	r2, .L56+8
	streq	r3, [r4, #56]
	ldr	r3, .L56+12
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
.L55:
	bl	gardening
	b	.L52
.L57:
	.align	2
.L56:
	.word	human
	.word	tasks
	.word	voff
	.word	gooseHoff
	.size	updateHuman, .-updateHuman
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
	.comm	aninum,4,4
	.comm	aniTimer,4,4
	.comm	hatTimer,4,4
	.comm	walkDir,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
