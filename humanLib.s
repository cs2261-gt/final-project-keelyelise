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
	push	{r4, r5, r6, r7, lr}
	mvn	r7, #0
	mov	r2, #0
	mov	r6, #30
	mov	r5, #100
	mov	r4, #40
	mov	lr, #112
	mov	ip, #144
	mov	r0, #1
	mov	r1, #7
	ldr	r3, .L4
	str	r7, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	ip, [r3, #24]
	str	r0, [r3, #36]
	str	r1, [r3, #56]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	walkDir
	.word	hatTimer
	.word	human
	.size	initHuman, .-initHuman
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
	ldr	r3, .L10
	ldr	r3, [r3]
	cmp	r3, #3
	moveq	r2, #2
	ldreq	r3, .L10+4
	ldrne	r3, .L10+4
	ldr	r1, .L10+8
	streq	r2, [r3, #56]
	ldr	r2, .L10+12
	ldr	ip, [r1]
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L11:
	.align	2
.L10:
	.word	tasks
	.word	human
	.word	voff
	.word	gooseHoff
	.size	updateHuman, .-updateHuman
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
	ldr	r2, .L18
	ldr	r3, [r2, #12]
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r1, r1, lsl #17
	mvn	r3, r3, lsr #18
	mvn	r1, r1, lsr #17
	ldr	ip, [r2, #36]
	push	{r4, lr}
	ldr	r0, .L18+4
	ldr	lr, [r2, #40]
	lsl	r4, ip, #3
	cmp	lr, #0
	add	ip, r0, ip, lsl #3
	strh	r1, [r0, r4]	@ movhi
	ldr	r2, [r2, #28]
	strh	r3, [ip, #2]	@ movhi
	bne	.L13
	add	r2, r2, #64
	lsl	r2, r2, #3
	strh	r2, [ip, #4]	@ movhi
.L12:
	pop	{r4, lr}
	bx	lr
.L13:
	cmp	lr, #1
	addeq	r2, r2, #66
	lsleq	r2, r2, #3
	strheq	r2, [ip, #4]	@ movhi
	beq	.L12
	cmp	lr, #2
	addeq	r2, r2, #96
	addne	r2, r2, #98
	lsl	r2, r2, #3
	strh	r2, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	human
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
	@ link register save eliminated.
	bx	lr
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
	.comm	hatTimer,4,4
	.comm	walkDir,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
