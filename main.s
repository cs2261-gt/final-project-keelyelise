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
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L4+16
	ldr	r1, .L4+20
	ldr	r0, .L4+24
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+28
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
	.word	playSoundA
	.word	1805505
	.word	menuSong
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
	str	ip, [r2]
	strh	r0, [r1]	@ movhi
	mov	r3, #256
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L8+20
	ldr	r4, .L8+24
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #7168
	ldr	r1, .L8+28
	strh	r2, [r3, #10]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r2, .L8+32
	mov	lr, pc
	bx	r2
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	oldButtons
	.word	67109120
	.word	buttons
	.word	hoff
	.word	voff
	.word	startScreenPal
	.word	DMANow
	.word	20612
	.word	setupSounds
	.word	setupInterrupts
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
	ldr	r4, .L25+4
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L25+12
	ldr	r2, .L25+16
	ldr	r1, .L25+20
	mov	lr, pc
	bx	r4
	mov	r3, #32768
	mov	r0, #3
	ldr	r2, .L25+24
	ldr	r1, .L25+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L25+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L25+36
	ldr	r1, .L25+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L25+44
	mov	r0, #3
	ldr	r1, .L25+48
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L25+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	21984
	.word	100679680
	.word	gardenTiles
	.word	100696064
	.word	gardenMap
	.word	gardenPal
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
	ldr	r3, .L35
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L35+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L35+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L35+12
	ldr	r0, .L35+16
	ldr	r3, .L35+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L36:
	.align	2
.L35:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	1373015
	.word	gardenSong
	.word	playSoundA
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
	mov	r3, #67108864
	mov	r1, #7296
	mov	r2, #512
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L39
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, .L39+4
	mov	r2, #100663296
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L39+12
	ldr	r1, .L39+16
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L39+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L39+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L39+28
	ldr	r1, .L39+32
	ldr	r0, .L39+36
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L39+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L40:
	.align	2
.L39:
	.word	DMANow
	.word	pauseScreenTiles
	.word	22816
	.word	100720640
	.word	pauseScreenMap
	.word	pauseScreenPal
	.word	stopSound
	.word	playSoundA
	.word	1805505
	.word	menuSong
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
	mov	r3, #67108864
	mov	r1, #7296
	mov	r2, #512
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L44
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, .L44+4
	mov	r2, #100663296
	ldr	r3, .L44+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L44+12
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+20
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L44+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	DMANow
	.word	winScreenTiles
	.word	18400
	.word	100720640
	.word	winScreenMap
	.word	winScreenPal
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
	ldr	r3, .L51
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L52:
	.align	2
.L51:
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
	mov	r3, #67108864
	mov	r1, #7168
	mov	r2, #4608
	push	{r4, lr}
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	ldr	r4, .L55+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L55+8
	mov	lr, pc
	bx	r4
	mov	r3, #544
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L55+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+16
	ldr	r1, .L55+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L55+24
	ldr	r1, .L55+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L55+32
	mov	r0, #3
	ldr	r1, .L55+36
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L55+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L71+8
	ldr	r3, .L71+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L71+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L71+20
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L58
	ldr	r2, .L71+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L68
.L58:
	tst	r3, #1
	beq	.L59
	ldr	r3, .L71+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L69
.L59:
	ldr	r3, .L71+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L70
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L69:
	bl	goToTask
	b	.L59
.L68:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L58
.L72:
	.align	2
.L71:
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
	ldr	r3, .L82
	ldr	r10, .L82+4
	ldr	r6, [r3]
	ldr	r7, .L82+8
.L74:
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
.L76:
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
	bne	.L76
	add	fp, fp, #7
	cmp	fp, #35
	sub	r5, r5, #1
	add	r8, r8, #16
	add	r9, r9, #16
	add	r10, r10, #56
	bne	.L74
	cmp	r6, #0
	bge	.L73
	ldr	r3, .L82+12
	mov	ip, #640
	mov	r2, r3
	mov	r0, #648
	ldr	r1, .L82+16
	ldr	lr, .L82+20
	strh	ip, [r3, #4]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	ip, .L82+24
	strh	r1, [r2, #8]!	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r3, #12]	@ movhi
.L73:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L83:
	.align	2
.L82:
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
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	ldr	r4, .L91+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L91+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L91+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L84
	ldr	r3, .L91+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L90
.L84:
	pop	{r4, lr}
	bx	lr
.L90:
	pop	{r4, lr}
	b	goToGame
.L92:
	.align	2
.L91:
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
	ldr	r6, .L108
	ldr	fp, .L108+4
	ldr	r3, .L108+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L108+12
	ldr	r2, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L108+16
	ldr	r7, .L108+20
	ldr	r9, .L108+24
	ldr	r8, .L108+28
	ldr	r4, .L108+32
.L95:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L103
.L97:
	.word	.L101
	.word	.L99
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L96
.L99:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L95
.L101:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L95
.L96:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L95
.L98:
	tst	r0, #8
	beq	.L103
	tst	r3, #8
	beq	.L107
.L103:
	mov	r0, r3
	b	.L95
.L100:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L95
.L107:
	ldr	r3, .L108+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L95
.L109:
	.align	2
.L108:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	task
	.word	67109120
	.word	goToStart
	.size	main, .-main
	.comm	hoff,4,4
	.comm	voff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
