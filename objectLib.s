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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L4
	ldr	fp, [r3]
	ldr	r5, [r3, #4]
	sub	sp, sp, #12
	ldr	r3, .L4+4
	str	r5, [sp]
	sub	r5, fp, #1
	str	r5, [r3, #148]
	str	r5, [r3, #132]
	ldr	r5, [sp]
	str	r5, [r3, #136]
	mov	r5, #32
	str	r5, [r3, #28]
	mov	r5, #32768
	str	r5, [r3, #60]
	mov	r5, #24
	add	fp, fp, #40
	str	fp, [sp, #4]
	mov	fp, #380
	mov	r9, #130
	mov	r2, #0
	mov	r1, #8
	mov	r0, #1
	mov	r4, #16384
	mov	r10, #16
	mov	r7, #170
	str	r5, [r3, #48]
	mov	r5, #28
	str	fp, [r3, #8]
	str	fp, [r3, #24]
	mov	fp, #14
	str	r9, [r3, #68]
	str	r9, [r3, #84]
	add	r9, r9, #460
	str	r7, [r3, #4]
	str	r7, [r3, #20]
	str	r4, [r3, #56]
	str	r1, [r3, #92]
	str	r1, [r3, #96]
	str	r1, [r3, #160]
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #100]
	str	r2, [r3, #120]
	str	r2, [r3, #124]
	str	r10, [r3, #32]
	str	r10, [r3, #156]
	str	r0, [r3, #64]
	str	r0, [r3, #116]
	str	r5, [r3, #112]
	str	r9, [r3, #72]
	str	r9, [r3, #88]
	ldr	r9, .L4+8
	str	fp, [r9]
	mov	fp, #4
	str	fp, [r3, #256]
	mov	fp, #5
	str	fp, [r3, #320]
	mov	fp, #80
	mov	ip, #880
	mov	lr, #2
	mov	r8, #3
	mov	r6, #120
	str	fp, [r3, #196]
	str	fp, [r3, #212]
	mov	r9, #28
	mov	fp, #30
	ldr	r5, [sp]
	str	r4, [r3, #184]
	str	r5, [r3, #152]
	str	r9, [r3, #176]
	str	r1, [r3, #224]
	str	r4, [r3, #248]
	str	r1, [r3, #284]
	str	r1, [r3, #288]
	str	r1, [r3, #348]
	str	fp, [r3, #240]
	str	lr, [r3, #128]
	str	r0, [r3, #164]
	str	r2, [r3, #188]
	str	r2, [r3, #180]
	str	r10, [r3, #220]
	str	r0, [r3, #228]
	str	r2, [r3, #252]
	str	r2, [r3, #244]
	str	r2, [r3, #292]
	str	r2, [r3, #312]
	str	r2, [r3, #316]
	str	r0, [r3, #308]
	str	r8, [r3, #192]
	str	ip, [r3, #200]
	str	ip, [r3, #216]
	str	r6, [r3, #260]
	str	r7, [r3, #452]
	str	r7, [r3, #468]
	mov	r7, #6
	str	r7, [r3, #384]
	mov	r7, #7
	mov	fp, #500
	str	r7, [r3, #448]
	mov	r7, #150
	str	fp, [r3, #264]
	str	fp, [r3, #280]
	str	r7, [r3, #324]
	str	r7, [r3, #340]
	mov	fp, #29
	mov	r7, #215
	mov	r9, #32768
	str	fp, [r3, #304]
	str	r7, [r3, #328]
	str	r7, [r3, #344]
	mov	fp, #28
	mov	r7, #27
	str	r6, [r3, #276]
	str	r1, [r3, #352]
	str	r1, [r3, #412]
	str	fp, [r3, #432]
	str	r1, [r3, #476]
	str	r1, [r3, #480]
	str	r7, [r3, #368]
	str	r0, [r3, #356]
	str	r2, [r3, #376]
	str	r2, [r3, #380]
	str	lr, [r3, #372]
	str	r10, [r3, #416]
	str	ip, [r3, #392]
	str	ip, [r3, #408]
	str	r0, [r3, #420]
	str	r9, [r3, #440]
	str	r2, [r3, #444]
	str	lr, [r3, #436]
	str	r0, [r3, #484]
	str	r2, [r3, #504]
	str	r2, [r3, #508]
	str	r7, [r3, #496]
	mov	r7, #100
	str	r7, [r3, #388]
	str	r7, [r3, #404]
	mov	r7, #230
	add	r5, r5, #19
	mov	fp, #29
	str	r5, [r3, #584]
	str	r5, [r3, #600]
	str	r6, [r3, #516]
	str	r6, [r3, #532]
	mov	r5, #9
	mov	r6, #32
	str	r7, [r3, #456]
	str	r7, [r3, #472]
	ldr	r7, [sp, #4]
	str	r1, [r3, #512]
	str	r7, [r3, #580]
	str	r7, [r3, #596]
	str	r1, [r3, #540]
	str	r1, [r3, #544]
	str	fp, [r3, #560]
	str	r1, [r3, #604]
	str	r1, [r3, #608]
	str	fp, [r3, #624]
	str	r1, [r3, #668]
	str	r8, [r3, #500]
	str	ip, [r3, #520]
	str	ip, [r3, #536]
	str	r0, [r3, #548]
	str	r2, [r3, #568]
	str	r2, [r3, #572]
	str	lr, [r3, #564]
	str	r0, [r3, #612]
	str	r2, [r3, #632]
	str	r2, [r3, #636]
	str	r8, [r3, #628]
	str	r6, [r3, #672]
	str	r2, [r3, #676]
	str	r5, [r3, #576]
	str	r1, [r3, #732]
	str	r1, [r3, #800]
	str	r1, [r3, #860]
	str	r1, [r3, #864]
	mov	r1, #11
	mov	fp, #112
	str	r1, [r3, #704]
	mov	r1, #12
	mov	r7, #24
	str	fp, [r3, #644]
	str	fp, [r3, #660]
	str	r4, [r3, #700]
	mov	fp, #416
	str	r4, [r3, #764]
	str	r4, [r3, #824]
	str	r1, [r3, #768]
	mov	r4, #30
	mov	r5, #10
	mov	r1, #13
	str	r5, [r3, #640]
	str	fp, [r3, #648]
	str	fp, [r3, #664]
	str	r9, [r3, #696]
	str	r7, [r3, #688]
	str	lr, [r3, #692]
	str	r6, [r3, #736]
	str	r2, [r3, #708]
	str	r2, [r3, #724]
	str	r2, [r3, #740]
	str	r9, [r3, #760]
	str	r7, [r3, #752]
	str	lr, [r3, #756]
	str	r10, [r3, #796]
	str	ip, [r3, #776]
	str	ip, [r3, #792]
	str	r0, [r3, #804]
	str	r2, [r3, #828]
	str	r4, [r3, #816]
	str	lr, [r3, #820]
	str	ip, [r3, #840]
	str	r1, [r3, #832]
	mov	r1, #140
	str	r1, [r3, #772]
	str	r1, [r3, #788]
	mov	r1, #160
	ldr	r5, .L4+12
	str	r1, [r3, #836]
	str	r5, [r3, #712]
	str	r5, [r3, #728]
	str	r1, [r3, #852]
	str	ip, [r3, #856]
	str	r0, [r3, #868]
	str	r2, [r3, #888]
	str	r2, [r3, #892]
	str	r4, [r3, #880]
	str	r8, [r3, #884]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	human
	.word	objects
	.word	shadowCount
	.word	621
	.size	initObjects, .-initObjects
	.align	2
	.global	updateObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObjects, %function
updateObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L27
	ldr	r3, [r5, #40]
	ldr	r4, .L27+4
	cmp	r3, #2
	moveq	fp, #6
	movne	fp, #7
	moveq	r10, #8
	movne	r10, #11
	ldr	r8, .L27+8
	ldr	r7, .L27+12
	ldr	r9, .L27+16
	sub	sp, sp, #20
	add	r6, r4, #896
	b	.L21
.L8:
	ldr	r3, .L27+20
	ldrh	r3, [r3, #48]
	ands	r3, r3, #256
	streq	r3, [r4, #40]
	streq	r3, [r5, #24]
	beq	.L14
	ldr	r2, [r5, #40]
	ldr	r0, [r8]
	ldr	r1, [r5, #56]
	ldr	r3, [r5, #4]
	cmp	r2, #0
	str	r0, [r4, #44]
	add	r1, r1, r3
	bne	.L16
	ldr	r3, [r4, #28]
	add	r3, r3, #3
	sub	r3, r1, r3
	str	r3, [r4, #8]
.L17:
	ldr	r3, [r5, #60]
	ldr	r1, [r5]
	add	r1, r1, r3
	ldr	r3, [r4, #8]
	ldr	r2, [r7]
	sub	r3, r3, r0
	ldr	r0, [r4]
	sub	r2, r1, r2
	cmp	r0, #13
	str	r1, [r4, #4]
	str	r2, [r4, #12]
	str	r3, [r4, #16]
	beq	.L20
.L14:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L25
.L21:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L8
	ldr	r0, [r5, #56]
	ldr	r3, [r5, #4]
	ldr	r1, [r5, #60]
	ldr	r2, [r5]
	add	r3, r3, r0
	add	r2, r2, r1
	sub	r3, r3, #5
	add	r1, r10, #5
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	fp, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	ldr	ip, .L27+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L10
	mov	r2, #127
	add	r1, r4, #28
	ldm	r1, {r1, r3}
	add	r3, r3, r3, lsr #31
	ldr	r0, [r9]
	ldr	ip, [r4, #4]
	asr	r3, r3, #1
	ldr	lr, .L27+28
	sub	r3, r3, #4
	add	r3, r3, ip
	add	r1, r1, r1, lsr #31
	lsl	ip, r0, #3
	strh	r3, [lr, ip]	@ movhi
	asr	r1, r1, #1
	ldr	r3, [r4, #8]
	sub	r1, r1, #4
	add	r1, r1, r3
	add	r3, lr, r0, lsl #3
	add	r0, r0, #1
	strh	r1, [r3, #2]	@ movhi
	str	r0, [r9]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L27+20
	ldrh	r2, [r3, #48]
	tst	r2, #256
	bne	.L10
	ldrh	r3, [r3, #48]
	tst	r3, #512
	bne	.L12
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L26
.L12:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	bne	.L10
	ldr	r3, [r4, #36]
	cmp	r3, #1
	streq	r3, [r5, #24]
	streq	r3, [r4, #40]
.L10:
	ldr	r1, [r7]
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #8]
	sub	r2, r2, r1
	ldr	r1, [r8]
	sub	r3, r3, r1
	ldr	r1, [r4]
	cmp	r1, #13
	str	r2, [r4, #12]
	str	r3, [r4, #16]
	bne	.L14
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L14
.L20:
	mvn	r3, #0
	ldr	r2, .L27+32
	add	r4, r4, #64
	cmp	r4, r6
	str	r3, [r2]
	bne	.L21
.L25:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L16:
	cmp	r2, #1
	ldrne	r3, [r4, #28]
	addne	r3, r3, r3, lsr #31
	subne	r3, r1, r3, asr #1
	streq	r1, [r4, #8]
	strne	r3, [r4, #8]
	b	.L17
.L26:
	mov	r3, #1
	str	r3, [r5, #24]
	str	r3, [r4, #40]
	b	.L10
.L28:
	.align	2
.L27:
	.word	goose
	.word	objects
	.word	gooseHoff
	.word	voff
	.word	shadowCount
	.word	67109120
	.word	collision
	.word	shadowOAM
	.word	tasks
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
	ldr	r2, .L33
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L33+4
	ldr	r7, .L33+8
	add	r6, r2, #112
.L30:
	ldr	r1, [r3, #16]
	add	r0, r3, #48
	ldr	r5, [r3, #60]
	ldrb	ip, [r3, #12]	@ zero_extendqisi2
	ldr	r4, [r3, #56]
	ldm	r0, {r0, lr}
	and	r1, r1, r7
	orr	r1, r1, r5
	orr	ip, ip, r4
	add	r0, r0, lr, lsl #5
	strh	r1, [r2, #18]	@ movhi
	strh	ip, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	add	r2, r2, #8
	cmp	r6, r2
	add	r3, r3, #64
	bne	.L30
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	shadowOAM
	.word	objects
	.word	511
	.size	drawObjects, .-drawObjects
	.align	2
	.global	drawCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCollision, %function
drawCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #127
	ldr	r2, [r0, #32]
	ldr	r3, [r0, #28]
	ldr	r1, .L37
	push	{r4, r5, lr}
	add	r2, r2, r2, lsr #31
	add	r3, r3, r3, lsr #31
	ldr	lr, [r1]
	ldr	r5, [r0, #4]
	ldr	r4, [r0, #8]
	asr	r2, r2, #1
	asr	r3, r3, #1
	ldr	r0, .L37+4
	sub	r2, r2, #4
	sub	r3, r3, #4
	add	r2, r2, r5
	add	r3, r3, r4
	lsl	r4, lr, #3
	strh	r2, [r0, r4]	@ movhi
	add	r2, r0, lr, lsl #3
	add	lr, lr, #1
	strh	r3, [r2, #2]	@ movhi
	str	lr, [r1]
	strh	ip, [r2, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	shadowCount
	.word	shadowOAM
	.size	drawCollision, .-drawCollision
	.align	2
	.global	checkTasks
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkTasks, %function
checkTasks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	checkTasks, .-checkTasks
	.comm	shadowCount,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
