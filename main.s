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
	mov	r3, #67108864
	mov	r1, #7168
	mov	r2, #4608
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L4
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, .L4+4
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #3024
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L4+36
	ldr	r1, .L4+40
	ldr	r0, .L4+44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startScreenPal
	.word	startScreenTiles
	.word	100720640
	.word	startScreenMap
	.word	83886592
	.word	buttonsPal
	.word	100728832
	.word	buttonsTiles
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
	mov	r3, #0
	mov	r1, #67108864
	mov	r0, #7168
	ldr	ip, .L8
	push	{r4, lr}
	ldr	r2, .L8+4
	strh	r3, [ip]	@ movhi
	ldr	ip, .L8+8
	ldrh	lr, [r2, #48]
	ldr	r2, .L8+12
	str	r3, [ip]
	strh	lr, [r2]	@ movhi
	ldr	ip, .L8+16
	ldr	r2, .L8+20
	str	r3, [ip]
	ldr	lr, .L8+24
	str	r3, [r2]
	ldr	ip, .L8+28
	ldr	r2, .L8+32
	str	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L8+36
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	strh	r0, [r1, #10]	@ movhi
	mov	r0, #3
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+48
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	oldButtons
	.word	67109120
	.word	hoff
	.word	buttons
	.word	voff
	.word	buttonTimer
	.word	option
	.word	frame
	.word	23680
	.word	DMANow
	.word	startScreenPal
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
	mov	r1, #4608
	push	{r4, lr}
	mov	r3, #944
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
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	mov	r1, #8192
	mov	lr, #100
	mov	r7, #16384
	mov	r6, #32768
	mov	r5, #92
	mov	r4, #108
	mov	r0, #41
	ldr	r3, .L36+4
	ldr	ip, .L36+8
	ldr	r2, [ip]
	strh	r1, [r3, #4]	@ movhi
	ldr	r1, .L36+12
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L36+16
	strh	r1, [r3, #18]	@ movhi
	add	r1, r1, #32
	strh	r1, [r3, #26]	@ movhi
	cmp	r2, #224
	sub	r1, r1, #16
	strh	r7, [r3]	@ movhi
	strh	r6, [r3, #2]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r4, [r3, #40]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	lr, [r3, #16]	@ movhi
	strh	lr, [r3, #24]	@ movhi
	strh	r1, [r3, #34]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	ble	.L15
	ldr	r1, .L36+20
	cmp	r2, #260
	ldr	lr, .L36+24
	movle	lr, r1
	mov	r4, #96
	mov	r5, #172
	mov	r7, #8832
	mov	r6, #55
	ldr	r1, .L36+28
	strh	r0, [r3, #48]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	ldr	r0, [r1]
	strh	lr, [r3, #84]	@ movhi
	add	r0, r0, #128
	ldr	lr, .L36+32
	lsl	r0, r0, #2
	strh	r4, [r3, #56]	@ movhi
	strh	r4, [r3, #80]	@ movhi
	strh	lr, [r3, #20]	@ movhi
	ldr	r4, .L36+36
	orr	r0, r0, #8192
	add	lr, lr, #70
	strh	r0, [r3, #12]	@ movhi
	strh	lr, [r3, #44]	@ movhi
	ldr	r0, .L36+40
	sub	lr, lr, #62
	strh	r4, [r3, #36]	@ movhi
	strh	lr, [r3, #60]	@ movhi
	add	r4, r4, #636
	ldr	lr, .L36+44
	strh	r0, [r3, #28]	@ movhi
	strh	r4, [r3, #52]	@ movhi
	ldr	r0, .L36+48
	sub	r4, r4, #123
	strh	r4, [r3, #76]	@ movhi
	strh	lr, [r3, #82]	@ movhi
	ldr	r4, .L36+52
	ldr	lr, .L36+56
	strh	r0, [r3, #50]	@ movhi
	strh	r0, [r3, #114]	@ movhi
	add	r0, r0, #72
	strh	r5, [r3, #74]	@ movhi
	strh	r0, [r3, #66]	@ movhi
	strh	r4, [r3, #90]	@ movhi
	ldr	r0, .L36+60
	strh	lr, [r3, #98]	@ movhi
	add	r4, r4, #64
	add	lr, lr, #96
	ldr	r5, .L36+64
	strh	r4, [r3, #106]	@ movhi
	strh	lr, [r3, #122]	@ movhi
	add	r4, r4, #96
	add	lr, lr, #64
	strh	r7, [r3, #68]	@ movhi
	strh	r6, [r3, #72]	@ movhi
	strh	r5, [r3, #58]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r0, [r3, #96]	@ movhi
	strh	r0, [r3, #104]	@ movhi
	strh	r0, [r3, #112]	@ movhi
	strh	r0, [r3, #120]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	r0, [r3, #136]	@ movhi
	strh	lr, [r3, #138]	@ movhi
.L19:
	ldr	r0, .L36+68
	ldr	lr, .L36+72
	strh	r0, [r3, #92]	@ movhi
	add	r0, r0, #8
	strh	lr, [r3, #100]	@ movhi
	strh	r0, [r3, #108]	@ movhi
	add	lr, lr, #124
	add	r0, r0, #124
	strh	lr, [r3, #116]	@ movhi
	strh	r0, [r3, #124]	@ movhi
	add	lr, lr, #192
	add	r0, r0, #192
	strh	lr, [r3, #132]	@ movhi
	strh	r0, [r3, #140]	@ movhi
.L26:
	ldr	r3, .L36+76
	add	r2, r2, #1
	smull	lr, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #5
	add	r3, r3, r3, lsl #2
	ldr	r0, .L36+80
	rsb	r3, r3, r3, lsl #4
	sub	r3, r2, r3, lsl #2
	smull	r2, r0, r3, r0
	asr	r2, r3, #31
	rsb	r2, r2, r0, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [ip]
	bne	.L27
	ldr	r3, [r1]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r1]
.L27:
	ldr	r3, .L36+84
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+88
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+92
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L36+96
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L34
.L14:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L15:
	ldr	r1, .L36+28
	cmp	r2, #149
	mov	r4, #96
	mov	r7, #8832
	ldr	lr, [r1]
	ble	.L18
	mov	r5, #180
	mov	r6, #45
	add	lr, lr, r4
	lsl	lr, lr, #2
	orr	lr, lr, #8192
	strh	lr, [r3, #12]	@ movhi
	ldr	lr, .L36+100
	strh	r4, [r3, #56]	@ movhi
	strh	r4, [r3, #80]	@ movhi
	ldr	r4, .L36+32
	strh	lr, [r3, #36]	@ movhi
	ldr	lr, .L36+64
	strh	r4, [r3, #20]	@ movhi
	add	r4, r4, #6
	strh	r4, [r3, #44]	@ movhi
	strh	lr, [r3, #58]	@ movhi
	ldr	r4, .L36+104
	ldr	lr, .L36+108
	strh	r0, [r3, #48]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	ldr	r0, .L36+40
	strh	r4, [r3, #66]	@ movhi
	strh	lr, [r3, #76]	@ movhi
	ldr	r4, .L36+112
	ldr	lr, .L36+24
	strh	r0, [r3, #28]	@ movhi
	ldr	r0, .L36+48
	strh	r4, [r3, #68]	@ movhi
	strh	lr, [r3, #84]	@ movhi
	ldr	r4, .L36+52
	ldr	lr, .L36+56
	strh	r0, [r3, #50]	@ movhi
	strh	r0, [r3, #114]	@ movhi
	ldr	r0, .L36+44
	strh	r5, [r3, #74]	@ movhi
	strh	r4, [r3, #90]	@ movhi
	strh	lr, [r3, #98]	@ movhi
	add	r4, r4, #64
	add	lr, lr, #96
	ldr	r5, .L36+116
	strh	r0, [r3, #82]	@ movhi
	strh	r4, [r3, #106]	@ movhi
	sub	r0, r0, #42
	strh	lr, [r3, #122]	@ movhi
	add	r4, r4, #96
	add	lr, lr, #64
	cmp	r2, #199
	strh	r7, [r3, #52]	@ movhi
	strh	r6, [r3, #72]	@ movhi
	strh	r5, [r3, #60]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r0, [r3, #96]	@ movhi
	strh	r0, [r3, #104]	@ movhi
	strh	r0, [r3, #112]	@ movhi
	strh	r0, [r3, #120]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	r0, [r3, #136]	@ movhi
	strh	lr, [r3, #138]	@ movhi
	bgt	.L19
.L25:
	ldr	r0, .L36+68
	ldr	lr, .L36+72
	strh	r0, [r3, #92]	@ movhi
	add	r0, r0, #8
	strh	lr, [r3, #100]	@ movhi
	strh	r0, [r3, #108]	@ movhi
	add	lr, lr, #188
	add	r0, r0, #188
	strh	lr, [r3, #116]	@ movhi
	strh	r0, [r3, #124]	@ movhi
	add	lr, lr, #64
	add	r0, r0, #64
	strh	lr, [r3, #132]	@ movhi
	strh	r0, [r3, #140]	@ movhi
	b	.L26
.L18:
	cmp	r2, #74
	mov	r6, #55
	mov	r5, #172
	ble	.L21
	add	lr, lr, #64
	lsl	lr, lr, #2
	orr	lr, lr, #8192
	strh	lr, [r3, #12]	@ movhi
	ldr	lr, .L36+32
	strh	r4, [r3, #56]	@ movhi
	strh	r4, [r3, #80]	@ movhi
	ldr	r4, .L36+36
	strh	lr, [r3, #20]	@ movhi
	add	lr, lr, #6
	strh	r4, [r3, #36]	@ movhi
	strh	lr, [r3, #44]	@ movhi
	ldr	r4, .L36+64
	ldr	lr, .L36+112
	strh	r0, [r3, #48]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r4, [r3, #58]	@ movhi
	ldr	r0, .L36+120
	ldr	r4, .L36+116
	strh	lr, [r3, #52]	@ movhi
	ldr	lr, .L36+104
	strh	r0, [r3, #28]	@ movhi
	strh	r4, [r3, #60]	@ movhi
	ldr	r0, .L36+48
	ldr	r4, .L36+108
	strh	lr, [r3, #66]	@ movhi
	ldr	lr, .L36+44
	cmp	r2, #110
	strh	r7, [r3, #68]	@ movhi
	strh	r6, [r3, #72]	@ movhi
	strh	r5, [r3, #74]	@ movhi
	strh	r0, [r3, #50]	@ movhi
	strh	r4, [r3, #76]	@ movhi
	strh	lr, [r3, #82]	@ movhi
	ble	.L35
	ldr	lr, .L36+20
	strh	r0, [r3, #114]	@ movhi
	ldr	r0, .L36+60
	strh	lr, [r3, #84]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	ldr	lr, .L36+52
	strh	r0, [r3, #96]	@ movhi
	strh	r0, [r3, #104]	@ movhi
	strh	r0, [r3, #112]	@ movhi
	strh	r0, [r3, #120]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r0, [r3, #136]	@ movhi
	ldr	r0, .L36+56
	strh	lr, [r3, #90]	@ movhi
	strh	r0, [r3, #98]	@ movhi
	add	lr, lr, #64
	add	r0, r0, #96
	strh	lr, [r3, #106]	@ movhi
	strh	r0, [r3, #122]	@ movhi
	add	lr, lr, #96
	add	r0, r0, #64
	strh	lr, [r3, #130]	@ movhi
	strh	r0, [r3, #138]	@ movhi
	b	.L25
.L34:
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToStart
.L21:
	add	lr, lr, #32
	lsl	lr, lr, #2
	orr	lr, lr, #8192
	strh	lr, [r3, #12]	@ movhi
	ldr	lr, .L36+36
	strh	r4, [r3, #56]	@ movhi
	strh	r4, [r3, #80]	@ movhi
	ldr	r4, .L36+124
	strh	lr, [r3, #36]	@ movhi
	ldr	lr, .L36+64
	strh	r4, [r3, #20]	@ movhi
	sub	r4, r4, #58
	strh	r4, [r3, #44]	@ movhi
	strh	lr, [r3, #58]	@ movhi
	ldr	r4, .L36+104
	ldr	lr, .L36+108
	strh	r0, [r3, #48]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	ldr	r0, .L36+40
	strh	r4, [r3, #66]	@ movhi
	strh	lr, [r3, #76]	@ movhi
	ldr	r4, .L36+112
	ldr	lr, .L36+24
	strh	r0, [r3, #28]	@ movhi
	ldr	r0, .L36+48
	strh	r4, [r3, #68]	@ movhi
	strh	lr, [r3, #84]	@ movhi
	ldr	r4, .L36+52
	ldr	lr, .L36+56
	strh	r0, [r3, #50]	@ movhi
	strh	r0, [r3, #114]	@ movhi
	ldr	r0, .L36+44
	strh	r5, [r3, #74]	@ movhi
	strh	r4, [r3, #90]	@ movhi
	strh	lr, [r3, #98]	@ movhi
	add	r4, r4, #64
	add	lr, lr, #96
	ldr	r5, .L36+128
	strh	r0, [r3, #82]	@ movhi
	strh	r4, [r3, #106]	@ movhi
	sub	r0, r0, #42
	strh	lr, [r3, #122]	@ movhi
	add	r4, r4, #96
	add	lr, lr, #64
	strh	r7, [r3, #52]	@ movhi
	strh	r6, [r3, #72]	@ movhi
	strh	r5, [r3, #60]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	r0, [r3, #96]	@ movhi
	strh	r0, [r3, #104]	@ movhi
	strh	r0, [r3, #112]	@ movhi
	strh	r0, [r3, #120]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r4, [r3, #130]	@ movhi
	strh	r0, [r3, #136]	@ movhi
	strh	lr, [r3, #138]	@ movhi
.L24:
	ldr	r0, .L36+132
	ldr	lr, .L36+136
	strh	r0, [r3, #92]	@ movhi
	add	r0, r0, #8
	strh	lr, [r3, #100]	@ movhi
	strh	r0, [r3, #108]	@ movhi
	add	lr, lr, #60
	add	r0, r0, #60
	strh	lr, [r3, #116]	@ movhi
	strh	r0, [r3, #124]	@ movhi
	add	lr, lr, #128
	add	r0, r0, #128
	strh	lr, [r3, #132]	@ movhi
	strh	r0, [r3, #140]	@ movhi
	b	.L26
.L35:
	ldr	lr, .L36+24
	strh	r0, [r3, #114]	@ movhi
	ldr	r0, .L36+60
	strh	lr, [r3, #84]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	ldr	lr, .L36+52
	strh	r0, [r3, #96]	@ movhi
	strh	r0, [r3, #104]	@ movhi
	strh	r0, [r3, #112]	@ movhi
	strh	r0, [r3, #120]	@ movhi
	strh	r0, [r3, #128]	@ movhi
	strh	r0, [r3, #136]	@ movhi
	ldr	r0, .L36+56
	strh	lr, [r3, #90]	@ movhi
	strh	r0, [r3, #98]	@ movhi
	add	lr, lr, #64
	add	r0, r0, #96
	strh	lr, [r3, #106]	@ movhi
	strh	r0, [r3, #122]	@ movhi
	add	lr, lr, #96
	add	r0, r0, #64
	cmp	r2, #99
	strh	lr, [r3, #130]	@ movhi
	strh	r0, [r3, #138]	@ movhi
	ble	.L24
	b	.L25
.L37:
	.align	2
.L36:
	.word	hideSprites
	.word	shadowOAM
	.word	buttonTimer
	.word	-32736
	.word	16408
	.word	8270
	.word	8206
	.word	frame
	.word	8196
	.word	8200
	.word	8198
	.word	16568
	.word	-32664
	.word	-32760
	.word	-32728
	.word	16526
	.word	16496
	.word	8329
	.word	8333
	.word	458129845
	.word	1717986919
	.word	waitForVBlank
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.word	8264
	.word	-32592
	.word	8713
	.word	8836
	.word	8204
	.word	8262
	.word	8260
	.word	8268
	.word	8393
	.word	8397
	.size	instructions, .-instructions
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
	ldr	r3, .L40
	strh	r1, [r2]	@ movhi
	ldr	r4, .L40+4
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L40+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L40+12
	ldr	r1, .L40+16
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L40+20
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L40+32
	ldr	r1, .L40+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L40+40
	mov	r0, #3
	ldr	r1, .L40+44
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L40+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	20192
	.word	gardenTiles
	.word	100720640
	.word	gardenMap
	.word	gardenPal
	.word	83886592
	.word	goosePal
	.word	100728832
	.word	gooseTiles
	.word	state
	.size	goToGame, .-goToGame
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L61
	ldr	r3, .L61+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #0
	moveq	ip, #9024
	moveq	r1, #9088
	movne	ip, #8960
	movne	r1, #9152
	ldreq	r3, .L61+8
	ldrne	r3, .L61+8
	ldreq	r0, .L61+12
	ldreq	r2, .L61+16
	ldrne	r0, .L61+20
	ldrne	r2, .L61+24
	strh	ip, [r3, #4]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	ldr	ip, .L61+28
	ldr	r0, .L61+32
	strh	r1, [r3, #20]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	ldr	r1, .L61+36
	ldr	r2, .L61+40
	strh	ip, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [r3, #18]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r1, [r3, #26]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	ldr	r5, .L61+44
	ldr	r3, .L61+48
	mov	lr, pc
	bx	r3
	ldr	r6, .L61+52
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L61+8
	mov	lr, pc
	bx	r6
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L45
	ldr	r2, .L61+56
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L60
.L45:
	tst	r3, #128
	beq	.L47
	ldr	r2, .L61+56
	ldrh	r2, [r2]
	tst	r2, #128
	moveq	r3, #1
	streq	r3, [r4]
	beq	.L42
.L47:
	tst	r3, #64
	beq	.L42
	ldr	r3, .L61+56
	ldrh	r3, [r3]
	ands	r3, r3, #64
	streq	r3, [r4]
.L42:
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L46
	ldr	r3, .L61+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+68
	mov	r2, #1
	ldr	r1, .L61+72
	ldr	r0, .L61+76
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r5]
	b	.L45
.L46:
	bl	goToInstructions
	ldrh	r3, [r5]
	b	.L45
.L62:
	.align	2
.L61:
	.word	option
	.word	hideSprites
	.word	shadowOAM
	.word	9028
	.word	9092
	.word	8964
	.word	9156
	.word	16492
	.word	-32759
	.word	-32727
	.word	16512
	.word	oldButtons
	.word	waitForVBlank
	.word	DMANow
	.word	buttons
	.word	initGame
	.word	stopSound
	.word	playSoundA
	.word	1373015
	.word	gardenSong
	.size	start, .-start
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
	ldr	r4, .L65
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, .L65+4
	mov	r2, #100663296
	ldr	r3, .L65+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+12
	ldr	r1, .L65+16
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L65+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L65+28
	ldr	r1, .L65+32
	ldr	r0, .L65+36
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L65+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L66:
	.align	2
.L65:
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
	ldr	r3, .L75
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L75+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L75+8
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L75+12
	ldr	r0, .L75+16
	ldr	r3, .L75+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L76:
	.align	2
.L75:
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	1373015
	.word	gardenSong
	.word	playSoundA
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
	ldr	r4, .L79
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, .L79+4
	mov	r2, #100663296
	ldr	r3, .L79+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L79+12
	ldr	r1, .L79+16
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L79+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L79+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L79+28
	ldr	r1, .L79+32
	ldr	r0, .L79+36
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L79+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L80:
	.align	2
.L79:
	.word	DMANow
	.word	winScreenTiles
	.word	18400
	.word	100720640
	.word	winScreenMap
	.word	winScreenPal
	.word	stopSound
	.word	playSoundA
	.word	1805505
	.word	menuSong
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
	ldr	r3, .L86
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L86+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L87:
	.align	2
.L86:
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
	ldr	r3, .L90
	ldr	r4, .L90+4
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L90+8
	mov	lr, pc
	bx	r4
	mov	r3, #496
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L90+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L90+16
	ldr	r1, .L90+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L90+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L90+28
	ldr	r1, .L90+32
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L90+36
	mov	r0, #3
	ldr	r1, .L90+40
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L90+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	TaskListTiles
	.word	100720640
	.word	TaskListMap
	.word	TaskListPal
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
	ldr	r3, .L106
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L106+8
	ldr	r3, .L106+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L106+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L106+20
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L93
	ldr	r2, .L106+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L103
.L93:
	tst	r3, #1
	beq	.L94
	ldr	r3, .L106+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L104
.L94:
	ldr	r3, .L106+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L105
	pop	{r4, r5, r6, lr}
	bx	lr
.L105:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L104:
	bl	goToTask
	b	.L94
.L103:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L93
.L107:
	.align	2
.L106:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #0
	mov	r5, #4
	mov	fp, lr
	mov	r10, lr
	mov	r6, #384
	ldr	r3, .L120
	ldr	r7, [r3]
	sub	r2, r7, #1
	rsbs	r3, r2, #0
	sub	sp, sp, #12
	adc	r3, r3, r2
	str	r3, [sp, #4]
	ldr	r3, .L120+4
	ldr	r8, .L120+8
	str	r3, [sp]
.L109:
	cmp	r5, #0
	ldr	r9, [sp, #4]
	mov	r3, #0
	movne	r9, #0
	mov	r2, #10
	add	ip, fp, #30
	orr	ip, ip, #16384
	lsl	ip, ip, #16
	ldr	r1, [sp]
	lsr	ip, ip, #16
.L112:
	orr	r0, r2, r8
	cmp	r5, r7
	strh	r0, [r1, #2]	@ movhi
	addge	r0, r3, r6
	strh	ip, [r1]	@ movhi
	strhge	r0, [r1, #4]	@ movhi
	add	r4, r3, lr
	bge	.L111
	cmp	r9, #0
	addne	r0, r3, #640
	strh	r4, [r1, #4]	@ movhi
	strhne	r0, [r1, #4]	@ movhi
.L111:
	add	r3, r3, #4
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r2, r2, #32
	lsl	r2, r2, #16
	cmp	r3, #28
	lsr	r2, r2, #16
	add	r1, r1, #8
	bne	.L112
	ldr	r3, [sp]
	add	r6, r6, #64
	add	lr, lr, #64
	add	r10, r10, #7
	lsl	r6, r6, #16
	lsl	lr, lr, #16
	add	r3, r3, #56
	cmp	r10, #42
	str	r3, [sp]
	lsr	r6, r6, #16
	lsr	lr, lr, #16
	add	fp, fp, #16
	sub	r5, r5, #1
	bne	.L109
	cmp	r7, #0
	bge	.L108
	ldr	r3, .L120+12
	mov	ip, #768
	mov	r2, r3
	mov	r0, #776
	ldr	r1, .L120+16
	ldr	lr, .L120+20
	strh	ip, [r3, #4]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	ip, .L120+24
	strh	r1, [r2, #8]!	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r3, #12]	@ movhi
.L108:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	tasks
	.word	shadowOAM
	.word	-32768
	.word	shadowOAM+336
	.word	16510
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
	ldr	r3, .L129
	mov	lr, pc
	bx	r3
	ldr	r4, .L129+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L129+8
	mov	lr, pc
	bx	r4
	ldr	r3, .L129+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L122
	ldr	r3, .L129+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L128
.L122:
	pop	{r4, lr}
	bx	lr
.L128:
	pop	{r4, lr}
	b	goToGame
.L130:
	.align	2
.L129:
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
	ldr	r6, .L147
	ldr	r7, .L147+4
	ldr	r3, .L147+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L147+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L147+16
	ldr	r10, .L147+20
	ldr	r9, .L147+24
	ldr	r8, .L147+28
	ldr	r4, .L147+32
.L133:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L142
.L135:
	.word	.L140
	.word	.L139
	.word	.L138
	.word	.L137
	.word	.L136
	.word	.L134
.L134:
	ldr	r3, .L147+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L133
.L136:
	tst	r0, #8
	beq	.L142
	tst	r3, #8
	beq	.L146
.L142:
	mov	r0, r3
	b	.L133
.L137:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L133
.L138:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L133
.L140:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L133
.L139:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L133
.L146:
	ldr	r3, .L147+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L133
.L148:
	.align	2
.L147:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	pause
	.word	67109120
	.word	task
	.word	goToStart
	.size	main, .-main
	.comm	frame,4,4
	.comm	option,4,4
	.comm	buttonTimer,4,4
	.comm	hoff,4,4
	.comm	voff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
