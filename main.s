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
	ldr	r3, .L25
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L25+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	mov	r3, #1920
	mov	r0, #3
	ldr	r2, .L25+12
	ldr	r1, .L25+16
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L25+20
	ldr	r1, .L25+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L25+28
	ldr	r1, .L25+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L25+36
	mov	r0, #3
	ldr	r1, .L25+40
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L25+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
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
	mov	r1, #4608
	push	{r4, lr}
	ldr	r3, .L65
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L65+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L65+8
	mov	lr, pc
	bx	r4
	mov	r3, #544
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L65+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L65+24
	ldr	r1, .L65+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L65+32
	mov	r0, #3
	ldr	r1, .L65+36
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L65+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	TaskListTiles
	.word	100720640
	.word	TaskListMap
	.word	83886592
	.word	taskSpritesPal
	.word	100728832
	.word	taskSpritesTiles
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
	.align	2
	.global	drawTaskList
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTaskList, %function
drawTaskList:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #0
	mov	r9, #80
	mov	fp, r8
	mov	r5, #4
	ldr	r3, .L90
	ldr	r10, .L90+4
	ldr	r6, [r3]
	ldr	r7, .L90+8
.L82:
	mov	r0, r10
	mov	r2, #10
	lsl	r3, r9, #16
	lsr	r3, r3, #16
	sub	lr, r3, #50
	sub	r4, r8, r3
	orr	lr, lr, #16384
	lsl	lr, lr, #16
	lsl	r4, r4, #18
	lsl	r3, r3, #18
	lsr	lr, lr, #16
	lsr	r4, r4, #16
	lsr	r3, r3, #16
.L84:
	cmp	r6, r5
	add	r1, r3, r4
	lsl	r1, r1, #16
	movle	r1, r3
	orr	ip, r2, r7
	add	r2, r2, #32
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r3, r3, #4
	lsrgt	r1, r1, #16
	lsl	r3, r3, #16
	cmp	r2, #234
	strh	lr, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	lsr	r3, r3, #16
	add	r0, r0, #8
	bne	.L84
	add	fp, fp, #7
	cmp	fp, #35
	sub	r5, r5, #1
	add	r8, r8, #16
	add	r9, r9, #16
	add	r10, r10, #56
	bne	.L82
	cmp	r6, #0
	bge	.L81
	ldr	r3, .L90+12
	mov	ip, #640
	mov	r2, r3
	mov	r0, #648
	ldr	r1, .L90+16
	ldr	lr, .L90+20
	strh	ip, [r3, #4]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	ip, .L90+24
	strh	r1, [r2, #8]!	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r3, #12]	@ movhi
.L81:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	tasks
	.word	shadowOAM
	.word	-32768
	.word	shadowOAM+280
	.word	16494
	.word	-16374
	.word	-16310
	.size	drawTaskList, .-drawTaskList
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
	push	{r4, lr}
	bl	drawTaskList
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r4, .L99+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L99+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L99+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L92
	ldr	r3, .L99+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L98
.L92:
	pop	{r4, lr}
	bx	lr
.L98:
	pop	{r4, lr}
	b	goToGame
.L100:
	.align	2
.L99:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	task, .-task
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
	ldr	r6, .L119
	ldr	fp, .L119+4
	ldr	r3, .L119+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L119+12
	ldr	r2, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L119+16
	ldr	r9, .L119+20
	ldr	r8, .L119+24
	ldr	r7, .L119+28
	ldr	r4, .L119+32
.L103:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L112
.L105:
	.word	.L110
	.word	.L109
	.word	.L108
	.word	.L107
	.word	.L106
	.word	.L104
.L104:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L103
.L106:
	tst	r0, #8
	beq	.L112
	tst	r3, #8
	beq	.L118
.L112:
	mov	r0, r3
	b	.L103
.L107:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L103
.L108:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L103
.L110:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L103
.L109:
	tst	r0, #8
	beq	.L112
	tst	r3, #8
	bne	.L112
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L103
.L118:
	ldr	r3, .L119+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L103
.L120:
	.align	2
.L119:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	task
	.word	67109120
	.word	goToGame
	.word	goToStart
	.size	main, .-main
	.comm	hoff,4,4
	.comm	voff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
