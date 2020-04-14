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
	.file	"objectLib.c"
	.text
	.align	2
	.global	initObjects
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObjects, %function
initObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #8
	mov	r1, #0
	mov	r4, #70
	mov	lr, #230
	mov	r7, #2
	mov	r6, #3
	mov	r5, #1
	mov	ip, #140
	mov	r0, #340
	ldr	r3, .L4
	str	r7, [r3, #40]
	str	r6, [r3, #92]
	str	r5, [r3, #88]
	str	r4, [r3, #4]
	str	r4, [r3, #20]
	str	lr, [r3, #8]
	str	lr, [r3, #24]
	str	r1, [r3]
	str	r1, [r3, #52]
	str	r1, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #80]
	str	r2, [r3, #84]
	str	ip, [r3, #56]
	str	ip, [r3, #72]
	str	r0, [r3, #60]
	str	r0, [r3, #76]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	objects
	.size	initObjects, .-initObjects
	.align	2
	.global	updateObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObjects, %function
updateObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L28
	ldr	r3, [r5, #40]
	cmp	r3, #2
	moveq	r3, #6
	movne	r3, #7
	moveq	r10, #8
	movne	r10, #11
	mov	r6, #0
	sub	sp, sp, #36
	str	r3, [sp, #20]
	add	r3, r10, #5
	str	r3, [sp, #24]
	ldr	r4, .L28+4
	ldr	r7, .L28+8
	ldr	fp, .L28+12
	ldr	r8, .L28+16
	ldr	r9, .L28+20
.L18:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L8
	ldrh	ip, [r7, #48]
	ldr	r1, [r4, #4]
	ldr	r2, [r8]
	ldr	r0, [r4, #8]
	ldr	r3, [r9]
	sub	lr, r1, r2
	tst	ip, #256
	sub	ip, r0, r3
	str	lr, [r4, #12]
	str	ip, [r4, #16]
	bne	.L9
	ldrh	ip, [r7, #48]
	tst	ip, #512
	bne	.L10
	ldr	ip, [r4, #36]
	cmp	ip, #0
	beq	.L24
.L10:
	ldr	ip, [r5, #28]
	cmp	ip, #1
	beq	.L25
.L9:
	sub	r1, r1, r2
	sub	r0, r0, r3
	str	r1, [r4, #12]
	str	r0, [r4, #16]
.L13:
	cmp	r6, #1
	add	r4, r4, #52
	bne	.L20
.L27:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L8:
	ldrh	r3, [r7, #48]
	ands	r3, r3, #256
	streq	r3, [r4, #44]
	streq	r3, [r5, #24]
	beq	.L13
	ldr	r2, [r5, #40]
	ldr	r0, [fp]
	ldr	r1, [r5, #4]
	ldr	r3, [r5, #56]
	cmp	r2, #0
	str	r0, [r4, #48]
	add	r3, r1, r3
	beq	.L26
	cmp	r2, #1
	ldrne	r2, [r4, #28]
	addne	r2, r2, r2, lsr #31
	subne	r3, r3, r2, asr #1
	str	r3, [r4, #8]
.L16:
	ldr	r2, [r5, #60]
	ldr	r3, [r5]
	ldr	r1, [r8]
	add	r3, r3, r2
	ldr	r2, [r4, #8]
	sub	r1, r3, r1
	sub	r2, r2, r0
	cmp	r6, #1
	str	r3, [r4, #4]
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	add	r4, r4, #52
	beq	.L27
.L20:
	mov	r6, #1
	b	.L18
.L26:
	ldr	r2, [r4, #28]
	add	r2, r2, #3
	sub	r3, r3, r2
	str	r3, [r4, #8]
	b	.L16
.L25:
	ldr	ip, [r4, #36]
	cmp	ip, #1
	str	ip, [sp, #28]
	bne	.L9
	ldr	ip, [r5]
	ldr	r2, [r5, #60]
	ldr	r3, [r5, #4]
	add	r2, ip, r2
	ldr	ip, [r5, #56]
	add	r3, r3, ip
	ldr	ip, [sp, #20]
	stmib	sp, {r2, r10, ip}
	str	r3, [sp]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	ldr	ip, .L28+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [sp, #28]
	strne	r3, [r5, #24]
	strne	r3, [r4, #44]
.L22:
	ldr	r2, [r8]
	ldr	r3, [r9]
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	b	.L9
.L24:
	ldr	ip, [r5, #56]
	ldr	r3, [r5, #4]
	ldr	r2, [r5]
	add	r3, r3, ip
	ldr	ip, [r5, #60]
	add	r2, r2, ip
	ldr	ip, [sp, #20]
	str	ip, [sp, #12]
	ldr	ip, [sp, #24]
	sub	r3, r3, #5
	str	ip, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	ldr	ip, .L28+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L22
	mov	r3, #1
	ldr	r2, [r8]
	str	r3, [r5, #24]
	str	r3, [r4, #44]
	ldr	r1, [r4, #4]
	ldr	r3, [r9]
	ldr	r0, [r4, #8]
	b	.L9
.L29:
	.align	2
.L28:
	.word	goose
	.word	objects
	.word	67109120
	.word	gooseHoff
	.word	voff
	.word	hoff
	.word	collision
	.size	updateObjects, .-updateObjects
	.align	2
	.global	drawObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawObjects, %function
drawObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L38
	ldr	r3, .L38+4
	ldr	ip, [r2]
	ldr	r1, [r3, #48]
	ldr	r2, .L38+8
	cmp	ip, r1
	push	{r4, r5, r6, lr}
	ldr	r1, [r3, #40]
	ldr	r0, [r2]
	ble	.L34
	cmp	ip, r0
	ble	.L34
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bne	.L34
	mov	r5, #512
	mov	lr, #640
	ldr	r6, [r3, #100]
	ldr	r2, .L38+12
	cmp	ip, r6
	ldr	ip, [r3, #16]
	add	r0, r2, r1, lsl #3
	lsl	r4, r1, #3
	strh	r5, [r2, r4]	@ movhi
	ldr	r1, [r3, #92]
	strh	ip, [r0, #2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	bgt	.L35
.L33:
	ldr	r0, [r3, #64]
	lsl	r1, r1, #3
	strh	r0, [r2, r1]	@ movhi
.L36:
	ldr	r0, [r3, #68]
	ldr	r3, .L38+16
	add	r2, r2, r1
	strh	r0, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	mov	r4, #640
	ldr	r5, [r3, #12]
	ldr	r2, .L38+12
	ldr	r6, [r3, #100]
	lsl	lr, r1, #3
	strh	r5, [r2, lr]	@ movhi
	ldr	lr, [r3, #16]
	add	r1, r2, r1, lsl #3
	cmp	r6, ip
	strh	r4, [r1, #4]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	ldr	r1, [r3, #92]
	bge	.L33
	cmp	ip, r0
	ble	.L33
.L35:
	ldr	r0, [r3, #96]
	cmp	r0, #0
	bne	.L33
	mov	r0, #512
	lsl	r1, r1, #3
	strh	r0, [r2, r1]	@ movhi
	b	.L36
.L39:
	.align	2
.L38:
	.word	overallHoff
	.word	objects
	.word	hoff
	.word	shadowOAM
	.word	641
	.size	drawObjects, .-drawObjects
	.ident	"GCC: (devkitARM release 53) 9.1.0"
