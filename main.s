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
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions.part.0, %function
instructions.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L29
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L30:
	.align	2
.L29:
	.word	buttons
	.size	instructions.part.0, .-instructions.part.0
	.set	pause.part.0,instructions.part.0
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
	ldr	r3, .L33
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instructions.part.0
.L34:
	.align	2
.L33:
	.word	oldButtons
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
	ldr	r4, .L37
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L37+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L37+8
	mov	r0, #3
	ldr	r1, .L37+12
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L37+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	.align	2
.L37:
	.word	DMANow
	.word	PauseScreenTiles
	.word	100720640
	.word	PauseScreenMap
	.word	state
	.size	goToPause, .-goToPause
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
	@ link register save eliminated.
	b	instructions
	.size	pause, .-pause
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
	ldr	r4, .L42
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L42+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L42+8
	mov	r0, #3
	ldr	r1, .L42+12
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L42+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	DMANow
	.word	WinScreenTiles
	.word	100720640
	.word	WinScreenMap
	.word	state
	.size	goToWin, .-goToWin
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
	ldr	r3, .L49
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L49+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L50:
	.align	2
.L49:
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
	ldr	r3, .L53
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L53+8
	mov	lr, pc
	bx	r4
	mov	r3, #544
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L53+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L53+16
	ldr	r1, .L53+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L53+24
	ldr	r1, .L53+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L53+32
	mov	r0, #3
	ldr	r1, .L53+36
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L53+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L54:
	.align	2
.L53:
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
	ldr	r3, .L69
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L69+8
	ldr	r3, .L69+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L69+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L69+20
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L56
	ldr	r2, .L69+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L66
.L56:
	tst	r3, #1
	beq	.L57
	ldr	r3, .L69+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L67
.L57:
	ldr	r3, .L69+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L68
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L67:
	bl	goToTask
	b	.L57
.L66:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L56
.L70:
	.align	2
.L69:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	tasks
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
	ldr	r3, .L80
	ldr	r10, .L80+4
	ldr	r6, [r3]
	ldr	r7, .L80+8
.L72:
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
.L74:
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
	bne	.L74
	add	fp, fp, #7
	cmp	fp, #35
	sub	r5, r5, #1
	add	r8, r8, #16
	add	r9, r9, #16
	add	r10, r10, #56
	bne	.L72
	cmp	r6, #0
	bge	.L71
	ldr	r3, .L80+12
	mov	ip, #640
	mov	r2, r3
	mov	r0, #648
	ldr	r1, .L80+16
	ldr	lr, .L80+20
	strh	ip, [r3, #4]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	ip, .L80+24
	strh	r1, [r2, #8]!	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r3, #12]	@ movhi
.L71:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L81:
	.align	2
.L80:
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
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	ldr	r4, .L89+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L89+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L82
	ldr	r3, .L89+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L88
.L82:
	pop	{r4, lr}
	bx	lr
.L88:
	pop	{r4, lr}
	b	goToGame
.L90:
	.align	2
.L89:
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
	ldr	r6, .L109
	ldr	r10, .L109+4
	push	{r4, r7, fp, lr}
	ldr	r3, .L109+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L109+12
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L109+16
	ldr	fp, .L109+20
	ldr	r8, .L109+24
	ldr	r7, .L109+28
	ldr	r4, .L109+32
.L93:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L102
.L95:
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L94
.L94:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L93
.L96:
	tst	r0, #8
	beq	.L102
	tst	r3, #8
	beq	.L108
.L102:
	mov	r0, r3
	b	.L93
.L97:
	tst	r0, #8
	beq	.L102
	ldr	r3, .L109+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L93
.L98:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L93
.L100:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L93
.L99:
	tst	r0, #8
	beq	.L102
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L93
.L108:
	ldr	r3, .L109+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L93
.L110:
	.align	2
.L109:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	instructions.part.0
	.word	game
	.word	task
	.word	67109120
	.word	pause.part.0
	.word	goToStart
	.size	main, .-main
	.comm	hoff,4,4
	.comm	voff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
