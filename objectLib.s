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
	mov	r2, #0
	ldr	r3, .L4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, [r3]
	ldr	r5, [r3, #4]
	ldr	r3, .L4+4
	sub	r7, r10, #1
	str	r7, [r3, #148]
	sub	sp, sp, #12
	add	r7, r10, #40
	str	r7, [sp, #4]
	ldr	r7, [r3, #148]
	str	r7, [r3, #132]
	ldr	r7, .L4+8
	str	r2, [r7]
	mov	r7, #380
	str	r7, [r3, #8]
	str	r7, [r3, #24]
	mov	r7, #32768
	mov	r10, #32
	str	r7, [r3, #60]
	mov	r7, #28
	mov	r8, #130
	mov	r1, #8
	mov	r0, #1
	mov	r4, #16384
	mov	r9, #16
	mov	r6, #170
	str	r10, [r3, #28]
	mov	r10, #24
	str	r7, [r3, #112]
	mov	r7, #14
	str	r8, [r3, #68]
	str	r8, [r3, #84]
	add	r8, r8, #460
	str	r6, [r3, #4]
	str	r6, [r3, #20]
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
	str	r9, [r3, #32]
	str	r9, [r3, #156]
	str	r10, [r3, #48]
	str	r0, [r3, #64]
	str	r0, [r3, #116]
	str	r8, [r3, #72]
	str	r8, [r3, #88]
	ldr	r8, .L4+12
	str	r7, [r8]
	mov	r8, #4
	str	r8, [r3, #256]
	mov	r8, #460
	str	r8, [r3, #264]
	mov	r8, #500
	str	r8, [r3, #280]
	mov	r8, #5
	str	r8, [r3, #320]
	mov	r8, #80
	str	r8, [r3, #196]
	str	r8, [r3, #212]
	mov	r8, #30
	mov	ip, #880
	mov	lr, #2
	mov	fp, #3
	str	r8, [r3, #240]
	mov	r7, #28
	mov	r8, #120
	str	r5, [r3, #136]
	str	r5, [r3, #152]
	str	r4, [r3, #184]
	str	r7, [r3, #176]
	str	r1, [r3, #224]
	str	r4, [r3, #248]
	str	r1, [r3, #284]
	str	r1, [r3, #288]
	str	lr, [r3, #128]
	str	r0, [r3, #164]
	str	r2, [r3, #188]
	str	r2, [r3, #180]
	str	r9, [r3, #220]
	str	r0, [r3, #228]
	str	r2, [r3, #252]
	str	r2, [r3, #244]
	str	r2, [r3, #292]
	str	r2, [r3, #312]
	str	r2, [r3, #316]
	str	r0, [r3, #308]
	str	fp, [r3, #192]
	str	ip, [r3, #200]
	str	ip, [r3, #216]
	str	r8, [r3, #260]
	str	r6, [r3, #452]
	str	r6, [r3, #468]
	mov	r6, #215
	str	r6, [r3, #344]
	mov	r6, #6
	str	r6, [r3, #384]
	mov	r6, #7
	mov	r7, #29
	str	r6, [r3, #448]
	mov	r6, #230
	str	r7, [r3, #304]
	str	r6, [r3, #472]
	mov	r7, #32768
	mov	r6, #150
	str	r7, [r3, #440]
	str	r6, [r3, #324]
	str	r6, [r3, #340]
	mov	r7, #28
	mov	r6, #180
	str	r7, [r3, #432]
	str	r6, [r3, #328]
	mov	r7, #100
	str	r6, [r3, #456]
	mov	r6, #27
	add	r5, r5, #19
	str	r1, [r3, #348]
	str	r1, [r3, #352]
	str	r1, [r3, #412]
	str	r1, [r3, #476]
	str	r1, [r3, #480]
	str	r8, [r3, #276]
	str	r0, [r3, #356]
	str	r2, [r3, #376]
	str	r2, [r3, #380]
	str	lr, [r3, #372]
	str	r9, [r3, #416]
	str	ip, [r3, #392]
	str	ip, [r3, #408]
	str	r0, [r3, #420]
	str	r2, [r3, #444]
	str	lr, [r3, #436]
	str	r0, [r3, #484]
	str	r2, [r3, #504]
	str	r2, [r3, #508]
	str	r6, [r3, #368]
	str	r7, [r3, #388]
	str	r7, [r3, #404]
	str	r5, [r3, #584]
	mov	r7, #29
	str	r5, [r3, #600]
	mov	r5, #9
	str	r6, [r3, #496]
	ldr	r6, [sp, #4]
	str	r7, [r3, #560]
	str	r6, [r3, #580]
	str	r6, [r3, #596]
	str	r7, [r3, #624]
	mov	r6, #32
	mov	r7, #112
	str	r5, [r3, #576]
	mov	r5, #10
	str	r1, [r3, #512]
	str	r1, [r3, #540]
	str	r1, [r3, #544]
	str	r1, [r3, #604]
	str	r1, [r3, #608]
	str	r1, [r3, #668]
	str	r5, [r3, #640]
	str	fp, [r3, #500]
	str	r8, [r3, #516]
	str	ip, [r3, #520]
	str	r8, [r3, #532]
	str	ip, [r3, #536]
	str	r0, [r3, #548]
	str	r2, [r3, #568]
	str	r2, [r3, #572]
	str	lr, [r3, #564]
	str	r0, [r3, #612]
	str	r2, [r3, #632]
	str	r2, [r3, #636]
	str	fp, [r3, #628]
	str	r6, [r3, #672]
	str	r7, [r3, #644]
	str	r1, [r3, #732]
	str	r1, [r3, #800]
	str	r1, [r3, #860]
	str	r1, [r3, #864]
	mov	r1, #11
	str	r1, [r3, #704]
	mov	r1, #12
	str	r7, [r3, #660]
	str	r1, [r3, #768]
	mov	r7, #416
	mov	r1, #13
	str	r7, [r3, #648]
	str	r7, [r3, #664]
	str	r4, [r3, #700]
	mov	r7, #32768
	str	r4, [r3, #764]
	str	r4, [r3, #824]
	str	r1, [r3, #832]
	mov	r4, #30
	mov	r1, #140
	ldr	r5, .L4+16
	str	r2, [r3, #676]
	str	r7, [r3, #696]
	str	r10, [r3, #688]
	str	lr, [r3, #692]
	str	r6, [r3, #736]
	str	r2, [r3, #708]
	str	r2, [r3, #724]
	str	r2, [r3, #740]
	str	r7, [r3, #760]
	str	r10, [r3, #752]
	str	lr, [r3, #756]
	str	r9, [r3, #796]
	str	ip, [r3, #776]
	str	ip, [r3, #792]
	str	r0, [r3, #804]
	str	r2, [r3, #828]
	str	r4, [r3, #816]
	str	lr, [r3, #820]
	str	r5, [r3, #712]
	str	r5, [r3, #728]
	str	r1, [r3, #772]
	str	r1, [r3, #788]
	mov	r1, #160
	str	ip, [r3, #840]
	str	r1, [r3, #836]
	str	r0, [r3, #868]
	str	r1, [r3, #852]
	str	ip, [r3, #856]
	str	r2, [r3, #888]
	str	r2, [r3, #892]
	str	r4, [r3, #880]
	str	fp, [r3, #884]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	human
	.word	objects
	.word	sprinklerOn
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L87
	ldr	r3, [r5, #40]
	cmp	r3, #2
	moveq	r3, #6
	movne	r3, #7
	sub	sp, sp, #44
	str	r3, [sp, #24]
	moveq	r3, #8
	movne	r3, #11
	ldr	r4, .L87+4
	str	r3, [sp, #20]
	ldr	fp, .L87+8
	ldr	r9, .L87+12
	ldr	r7, .L87+16
	ldr	r8, .L87+20
	ldr	r10, .L87+24
	add	r6, r4, #896
	b	.L23
.L85:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L81
	ldrh	r3, [r10]
	tst	r3, #256
	bne	.L27
.L28:
	ldr	r1, [r5, #56]
	ldm	r5, {r2, r3}
	add	r3, r1, r3
	ldr	r1, [r5, #60]
	ldr	r0, [r9]
	add	r2, r2, r1
	ldr	r1, [r7]
	str	r3, [r4, #8]
	sub	r1, r2, r1
	sub	r3, r3, r0
	str	r3, [r4, #16]
	str	r0, [r4, #44]
	str	r2, [r4, #4]
	str	r1, [r4, #12]
	ldr	ip, [r4]
.L13:
	cmp	ip, #13
	mov	r3, ip
	beq	.L82
.L16:
	cmp	r3, #1
	beq	.L83
.L21:
	cmp	r3, #0
	bne	.L22
	ldr	r3, [r4, #40]
	cmp	r3, #0
	movne	r3, #4
	strne	r3, [fp]
.L15:
	add	r4, r4, #64
	cmp	r4, r6
	beq	.L84
.L23:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L85
	ldrh	r3, [r10]
	tst	r3, #256
	beq	.L14
.L27:
	ldr	r3, .L87+28
	ldrh	r3, [r3]
	ands	r3, r3, #256
	bne	.L14
	ldr	r2, [r5, #60]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	add	r1, r1, r2
	ldr	r2, [r5, #56]
	ldr	ip, [r7]
	add	r2, r0, r2
	str	r3, [r4, #40]
	str	r3, [r5, #24]
	ldr	r0, [r4, #44]
	ldr	r3, [r4]
	sub	ip, r1, ip
	sub	r0, r2, r0
	cmp	r3, #13
	str	r1, [r4, #4]
	str	ip, [r4, #12]
	str	r2, [r4, #8]
	str	r0, [r4, #16]
	beq	.L15
	cmp	r3, #1
	bne	.L21
.L83:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	beq	.L15
	mov	r2, #3
	ldr	r1, .L87+32
	add	r4, r4, #64
	cmp	r4, r6
	str	r3, [r1]
	str	r2, [fp]
	bne	.L23
.L84:
	ldr	r3, [fp]
	cmp	r3, #2
	beq	.L86
.L6:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r8, #60]
	cmp	r3, #0
	beq	.L79
	ldm	r8, {r2, r3}
	ldr	r1, [r9]
	ldr	r0, [r7]
	add	r3, r3, #20
	add	r2, r2, #32
	str	r3, [r4, #8]
	sub	r0, r2, r0
	sub	r3, r3, r1
	str	r3, [r4, #16]
	str	r1, [r4, #44]
	str	r2, [r4, #4]
	str	r0, [r4, #12]
.L79:
	ldr	ip, [r4]
	cmp	ip, #13
	mov	r3, ip
	bne	.L16
.L82:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	mvnne	r3, #0
	strne	r3, [fp]
	b	.L15
.L22:
	cmp	r3, #2
	bne	.L15
	ldr	r3, [r4, #40]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [fp]
	b	.L15
.L81:
	ldr	r1, [r5, #60]
	ldr	r2, [r5]
	ldr	r0, [r5, #56]
	ldr	r3, [r5, #4]
	add	r2, r2, r1
	ldr	r1, [sp, #20]
	add	r3, r3, r0
	ldr	r0, [sp, #24]
	sub	r3, r3, #5
	add	r1, r1, #5
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r3, [sp]
	str	r1, [sp, #8]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	ldr	ip, .L87+36
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L78
	ldrh	r3, [r10]
	tst	r3, #256
	beq	.L78
	ldr	r3, .L87+28
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L74
.L78:
	ldr	ip, [r4]
.L10:
	ldr	r1, [r7]
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #8]
	sub	r2, r2, r1
	ldr	r1, [r9]
	sub	r3, r3, r1
	str	r2, [r4, #12]
	str	r3, [r4, #16]
	b	.L13
.L74:
	ldr	r3, [r8, #28]
	cmp	r3, #1
	ldr	ip, [r4]
	beq	.L75
.L11:
	ldr	r3, .L87+40
	ldrh	r3, [r3, #48]
	tst	r3, #512
	bne	.L12
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L12
	mov	r3, #1
	mov	lr, r4
	str	r3, [r4, #40]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	ldr	lr, .L87+44
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #28]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	ldr	lr, [sp, #32]
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #28]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	ldr	lr, [sp, #32]
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	mov	lr, #1
	ldr	r3, [sp, #28]
	str	lr, [r5, #24]
	ldm	r3, {r0, r1, r2, r3}
	ldr	lr, [sp, #32]
	stm	lr, {r0, r1, r2, r3}
	b	.L10
.L86:
	ldr	r3, .L87+4
	mov	r2, r3
	mov	r1, r2
	mov	r5, #32
	mov	r6, #15
	mov	r7, #69
	mov	r8, #68
	mov	r0, r1
	stm	sp, {r5, r6, r7, r8}
	ldr	r4, .L87+36
	ldr	r3, [r3, #288]
	ldr	r2, [r2, #284]
	ldr	r1, [r1, #260]
	ldr	r0, [r0, #264]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L87+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r8}
	ldr	r3, [r3, #352]
	ldr	r2, [r2, #348]
	ldr	r1, [r1, #324]
	ldr	r0, [r0, #328]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L87+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r8}
	ldr	r3, [r3, #416]
	ldr	r2, [r2, #412]
	ldr	r1, [r1, #388]
	ldr	r0, [r0, #392]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L87+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r8}
	ldr	r3, [r3, #480]
	ldr	r2, [r2, #476]
	ldr	r1, [r1, #452]
	ldr	r0, [r0, #456]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L87+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r8}
	ldr	r3, [r3, #544]
	ldr	r2, [r2, #540]
	ldr	r1, [r1, #516]
	ldr	r0, [r0, #520]
	mov	lr, pc
	bx	r4
	b	.L6
.L12:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	bne	.L10
	ldr	r3, [r4, #36]
	cmp	r3, #1
	str	r3, [sp, #28]
	bne	.L10
	mov	lr, r4
	str	r3, [r4, #40]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, .L87+44
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #36]
	ldr	lr, [sp, #32]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #36]
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #36]
	ldr	lr, [sp, #32]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #36]
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [sp, #32]
	str	lr, [sp, #36]
	ldr	lr, [sp, #28]
	ldm	r3, {r0, r1, r2, r3}
	str	lr, [r5, #24]
	ldr	lr, [sp, #36]
	stm	lr, {r0, r1, r2, r3}
	b	.L10
.L75:
	cmp	ip, #9
	bne	.L11
	b	.L10
.L88:
	.align	2
.L87:
	.word	goose
	.word	objects
	.word	tasks
	.word	gooseHoff
	.word	voff
	.word	human
	.word	oldButtons
	.word	buttons
	.word	sprinklerOn
	.word	collision
	.word	67109120
	.word	stolenObject
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
	ldr	r2, .L93
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L93+4
	ldr	r7, .L93+8
	add	r6, r2, #112
.L90:
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
	bne	.L90
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L94:
	.align	2
.L93:
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
	@ link register save eliminated.
	bx	lr
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
	.comm	sprinklerOn,4,4
	.comm	shadowCount,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
