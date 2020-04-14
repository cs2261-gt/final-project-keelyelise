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
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	lr, #5
	mov	r3, #0
	mov	r1, #16
	ldr	r2, .L4+12
	ldr	ip, .L4+16
	str	lr, [r2]
	ldr	r0, .L4+20
	ldr	r2, .L4+24
	ldr	lr, .L4+28
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r2]
	ldr	ip, .L4+32
	ldr	r0, .L4+36
	ldr	r2, .L4+40
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	initGoose
	.word	initHuman
	.word	initObjects
	.word	tasks
	.word	cheat
	.word	voff
	.word	hoff
	.word	anicounter
	.word	gooseHoff
	.word	overallHoff
	.word	sb
	.size	initGame, .-initGame
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
	ldr	r3, .L13
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L13+8
	mov	lr, pc
	bx	r3
	ldr	r2, .L13+12
	ldr	r3, [r2]
	cmp	r3, #256
	ble	.L7
	ldr	ip, .L13+16
	ldr	r1, [ip]
	cmp	r1, #17
	ble	.L12
.L8:
	ldr	r2, .L13+20
	ldr	r3, [r2]
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	bgt	.L6
	cmp	r3, #0
	addlt	r3, r3, #512
	strlt	r3, [r2]
.L6:
	pop	{r4, lr}
	bx	lr
.L7:
	cmp	r3, #0
	bgt	.L8
	ldr	ip, .L13+16
	ldr	r1, [ip]
	cmp	r1, #16
	ble	.L8
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
	b	.L8
.L12:
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
	b	.L8
.L14:
	.align	2
.L13:
	.word	updateGoose
	.word	updateHuman
	.word	updateObjects
	.word	hoff
	.word	sb
	.word	gooseHoff
	.size	updateGame, .-updateGame
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
	push	{r4, lr}
	ldr	r3, .L17
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L17+12
	ldrh	r1, [r2]
	ldr	r2, .L17+16
	ldrh	r2, [r2]
	strh	r1, [r3, #18]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L18:
	.align	2
.L17:
	.word	drawGoose
	.word	drawHuman
	.word	drawObjects
	.word	voff
	.word	hoff
	.size	drawGame, .-drawGame
	.comm	overallHoff,4,4
	.comm	gooseHoff,4,4
	.comm	anicounter,4,4
	.comm	sb,4,4
	.comm	hoff,4,4
	.comm	voff,4,4
	.comm	cheat,4,4
	.comm	tasks,4,4
	.comm	objects,104,4
	.comm	human,44,4
	.comm	goose,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
