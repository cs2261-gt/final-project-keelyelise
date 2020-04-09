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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #2080
	strh	r1, [r2]	@ movhi
	ldr	r4, .L4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+8
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startScreenTiles
	.word	100720640
	.word	startScreenMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	ldr	r2, .L8
	push	{r4, lr}
	ldr	r3, .L8+4
	strh	ip, [r2]	@ movhi
	ldr	r1, .L8+8
	ldrh	r0, [r3, #48]
	ldr	r2, .L8+12
	ldr	lr, .L8+16
	strh	r0, [r1]	@ movhi
	mov	r3, #256
	str	ip, [r2]
	ldr	r1, .L8+20
	mov	r2, #83886080
	ldr	r4, .L8+24
	mov	r0, #3
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #7168
	ldr	r2, .L8+28
	strh	r1, [r3, #10]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	oldButtons
	.word	67109120
	.word	buttons
	.word	hoff
	.word	voff
	.word	gardenPal
	.word	DMANow
	.word	20484
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #1072
	strh	r1, [r2]	@ movhi
	ldr	r4, .L12
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+8
	mov	r0, #3
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instructionsScreenTiles
	.word	100720640
	.word	instructionsScreenMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L21
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L21+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r3, .L21+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstructions
.L22:
	.align	2
.L21:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #4352
	push	{r4, lr}
	mov	r3, #1920
	ldr	r4, .L25
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L25+4
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L25+12
	ldr	r1, .L25+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L25+20
	ldr	r1, .L25+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L25+28
	mov	r0, #3
	ldr	r1, .L25+32
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L25+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	DMANow
	.word	100679680
	.word	tempTiles
	.word	100696064
	.word	tempMap
	.word	83886592
	.word	goosePal
	.word	100728832
	.word	gooseTiles
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L32+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L33:
	.align	2
.L32:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #1568
	strh	r1, [r2]	@ movhi
	ldr	r4, .L36
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L36+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L36+8
	mov	r0, #3
	ldr	r1, .L36+12
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L36+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L37:
	.align	2
.L36:
	.word	DMANow
	.word	PauseScreenTiles
	.word	100720640
	.word	PauseScreenMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #784
	strh	r1, [r2]	@ movhi
	ldr	r4, .L40
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L40+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L40+8
	mov	r0, #3
	ldr	r1, .L40+12
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L40+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
	.word	DMANow
	.word	WinScreenTiles
	.word	100720640
	.word	WinScreenMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L54
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L43
	ldr	r2, .L54+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L52
.L43:
	tst	r3, #4
	beq	.L42
	ldr	r3, .L54+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L53
.L42:
	pop	{r4, lr}
	bx	lr
.L53:
	pop	{r4, lr}
	b	goToWin
.L52:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L43
.L55:
	.align	2
.L54:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L61
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L61+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L62:
	.align	2
.L61:
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToTask
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTask, %function
goToTask:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #544
	strh	r1, [r2]	@ movhi
	ldr	r4, .L65
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L65+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L65+8
	mov	r0, #3
	ldr	r1, .L65+12
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L65+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
	.word	DMANow
	.word	TaskListTiles
	.word	100720640
	.word	TaskListMap
	.word	state
	.size	goToTask, .-goToTask
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L79
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L79+8
	ldr	r3, .L79+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L79+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L79+20
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L68
	ldr	r2, .L79+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L77
.L68:
	tst	r3, #2
	beq	.L67
	ldr	r3, .L79+24
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L78
.L67:
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	pop	{r4, r5, r6, lr}
	b	goToTask
.L77:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L68
.L80:
	.align	2
.L79:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r10, .L103
	ldr	r4, .L103+4
	ldr	r3, .L103+8
	mov	lr, pc
	bx	r3
	ldr	r9, .L103+12
	ldr	r2, [r4]
	ldrh	r0, [r10]
	ldr	r7, .L103+16
	ldr	r8, .L103+20
	ldr	r6, .L103+24
	ldr	r5, .L103+28
	ldr	fp, .L103+32
.L83:
	strh	r0, [r9]	@ movhi
	ldrh	r3, [fp, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L93
.L85:
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L84
.L84:
	tst	r0, #2
	beq	.L93
	tst	r3, #2
	beq	.L92
.L93:
	mov	r0, r3
	b	.L83
.L86:
	tst	r0, #8
	beq	.L93
	tst	r3, #8
	bne	.L93
	ldr	r3, .L103+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L83
.L87:
	mov	lr, pc
	bx	r5
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L83
.L88:
	mov	lr, pc
	bx	r6
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L83
.L90:
	mov	lr, pc
	bx	r7
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L83
.L89:
	tst	r0, #8
	beq	.L93
	tst	r3, #8
	bne	.L93
.L92:
	mov	lr, pc
	bx	r8
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L83
.L104:
	.align	2
.L103:
	.word	buttons
	.word	state
	.word	initialize
	.word	oldButtons
	.word	start
	.word	goToGame
	.word	game
	.word	pause
	.word	67109120
	.word	goToStart
	.size	main, .-main
	.text
	.align	2
	.global	task
	.syntax unified
	.arm
	.fpu softvfp
	.type	task, %function
task:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L110
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	ldr	r3, .L110+4
	ldrh	r3, [r3]
	tst	r3, #2
	bxne	lr
	b	goToGame
.L111:
	.align	2
.L110:
	.word	oldButtons
	.word	buttons
	.size	task, .-task
	.comm	hoff,4,4
	.comm	voff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
