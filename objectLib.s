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
	ldr	r3, .L4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, [r3]
	ldr	r7, [r3, #4]
	ldr	r3, .L4+4
	sub	r9, r10, #1
	str	r9, [r3, #132]
	str	r9, [r3, #148]
	mov	r9, #560
	str	r9, [r3, #72]
	add	r9, r9, #30
	str	r9, [r3, #88]
	add	r9, r7, #18
	sub	sp, sp, #12
	str	r9, [r3, #136]
	sub	r9, r7, #8
	str	r9, [sp, #4]
	mov	r9, #32
	str	r9, [r3, #28]
	mov	r9, #32768
	str	r9, [r3, #60]
	mov	r9, #24
	add	r10, r10, #40
	str	r10, [sp]
	str	r9, [r3, #48]
	mov	r10, #380
	mov	r9, #28
	mov	r2, #0
	mov	r1, #8
	mov	r0, #1
	mov	lr, #16
	mov	r8, #16384
	mov	r4, #170
	mov	r5, #130
	str	r10, [r3, #8]
	str	r10, [r3, #24]
	mov	r10, r9
	str	lr, [r3, #32]
	str	lr, [r3, #156]
	str	r4, [r3, #4]
	str	r4, [r3, #20]
	str	r1, [r3, #92]
	str	r1, [r3, #96]
	str	r1, [r3, #160]
	str	r5, [r3, #68]
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #100]
	str	r2, [r3, #120]
	str	r2, [r3, #124]
	str	r8, [r3, #56]
	str	r0, [r3, #64]
	str	r0, [r3, #116]
	str	r5, [r3, #84]
	str	r10, [r3, #176]
	mov	r10, #58
	str	r10, [r3, #260]
	mov	r10, #500
	str	r9, [r3, #112]
	ldr	r9, [sp, #4]
	str	r9, [r3, #152]
	ldr	r9, .L4+8
	mov	ip, #880
	mov	r6, #2
	mov	fp, #3
	str	r10, [r3, #280]
	str	r9, [r3, #264]
	mov	r10, #80
	mov	r9, #30
	str	lr, [r3, #220]
	str	r1, [r3, #224]
	str	r1, [r3, #284]
	str	r1, [r3, #288]
	str	r1, [r3, #348]
	str	r1, [r3, #352]
	str	r10, [r3, #196]
	str	r10, [r3, #212]
	str	r9, [r3, #240]
	str	r6, [r3, #128]
	str	r0, [r3, #164]
	str	r8, [r3, #184]
	str	r2, [r3, #188]
	str	r2, [r3, #180]
	str	r0, [r3, #228]
	str	r8, [r3, #248]
	str	r2, [r3, #252]
	str	r2, [r3, #244]
	str	r2, [r3, #292]
	str	r8, [r3, #312]
	str	r2, [r3, #316]
	str	r0, [r3, #308]
	str	fp, [r3, #192]
	str	ip, [r3, #200]
	str	ip, [r3, #216]
	str	r9, [r3, #304]
	str	r4, [r3, #468]
	mov	r4, #219
	str	r4, [r3, #328]
	mov	r4, #150
	str	r4, [r3, #340]
	mov	r4, #215
	mov	r10, #4
	str	r4, [r3, #344]
	mov	r4, #6
	str	r10, [r3, #256]
	str	r4, [r3, #384]
	mov	r10, #120
	mov	r4, #7
	str	r10, [r3, #276]
	str	r4, [r3, #448]
	mov	r10, #5
	mov	r4, #27
	mov	r9, #125
	str	r10, [r3, #320]
	str	r9, [r3, #324]
	str	r4, [r3, #368]
	mov	r9, #32768
	str	r4, [r3, #496]
	mov	r10, #28
	mov	r4, #100
	str	r1, [r3, #412]
	str	lr, [r3, #416]
	str	r10, [r3, #432]
	str	r1, [r3, #476]
	str	r1, [r3, #480]
	str	r5, [r3, #452]
	str	r0, [r3, #356]
	str	r2, [r3, #376]
	str	r2, [r3, #380]
	str	r6, [r3, #372]
	str	ip, [r3, #392]
	str	ip, [r3, #408]
	str	r0, [r3, #420]
	str	r9, [r3, #440]
	str	r2, [r3, #444]
	str	r6, [r3, #436]
	str	r0, [r3, #484]
	str	r2, [r3, #504]
	str	r2, [r3, #508]
	str	fp, [r3, #500]
	str	r4, [r3, #388]
	str	r4, [r3, #404]
	mov	r4, #230
	str	r4, [r3, #456]
	str	r4, [r3, #472]
	ldr	r4, [sp]
	str	r4, [r3, #580]
	str	r4, [r3, #596]
	mov	r4, #9
	str	r4, [r3, #576]
	mov	r4, #10
	add	r7, r7, #19
	mov	r10, #120
	str	r7, [r3, #584]
	str	r7, [r3, #600]
	str	r4, [r3, #640]
	mov	r7, #32
	mov	r4, #29
	str	r1, [r3, #512]
	str	r1, [r3, #540]
	str	r1, [r3, #544]
	str	r10, [r3, #516]
	str	r10, [r3, #532]
	str	r1, [r3, #604]
	str	r1, [r3, #608]
	str	r1, [r3, #668]
	str	r7, [r3, #672]
	str	r4, [r3, #560]
	str	ip, [r3, #520]
	str	ip, [r3, #536]
	str	r0, [r3, #548]
	str	r2, [r3, #568]
	str	r2, [r3, #572]
	str	r6, [r3, #564]
	str	r0, [r3, #612]
	str	r2, [r3, #632]
	str	r2, [r3, #636]
	str	fp, [r3, #628]
	str	r2, [r3, #676]
	str	r9, [r3, #696]
	str	r4, [r3, #624]
	str	r1, [r3, #732]
	str	r1, [r3, #800]
	str	r1, [r3, #860]
	str	r1, [r3, #864]
	mov	r1, #11
	mov	r10, #98
	str	r1, [r3, #704]
	mov	r1, #12
	ldr	r5, .L4+12
	str	r10, [r3, #644]
	str	r10, [r3, #660]
	str	r5, [r3, #648]
	str	r5, [r3, #664]
	str	r1, [r3, #768]
	mov	r5, #49152
	mov	r10, #4
	mov	r1, #13
	str	r5, [r3, #700]
	str	r10, [r3, #692]
	mov	r5, #24
	str	r7, [r3, #736]
	str	lr, [r3, #796]
	str	r1, [r3, #832]
	mov	lr, #30
	mov	r1, #140
	mov	r7, #49152
	mov	r10, #5
	ldr	r4, .L4+16
	str	r5, [r3, #688]
	str	r2, [r3, #708]
	str	r2, [r3, #724]
	str	r2, [r3, #740]
	str	r9, [r3, #760]
	str	r7, [r3, #764]
	str	r5, [r3, #752]
	str	r10, [r3, #756]
	str	ip, [r3, #776]
	str	ip, [r3, #792]
	str	r0, [r3, #804]
	str	r8, [r3, #824]
	str	r2, [r3, #828]
	str	lr, [r3, #816]
	str	r6, [r3, #820]
	str	ip, [r3, #840]
	str	r4, [r3, #712]
	str	r4, [r3, #728]
	str	r1, [r3, #772]
	str	r1, [r3, #788]
	mov	r1, #160
	str	ip, [r3, #856]
	str	r1, [r3, #836]
	str	r1, [r3, #852]
	str	r0, [r3, #868]
	str	r2, [r3, #888]
	str	r2, [r3, #892]
	str	lr, [r3, #880]
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
	.word	430
	.word	411
	.word	670
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
	ldr	r5, .L92
	ldr	r3, [r5, #40]
	cmp	r3, #2
	moveq	r3, #6
	movne	r3, #7
	sub	sp, sp, #36
	str	r3, [sp, #24]
	moveq	r3, #8
	movne	r3, #11
	ldr	r4, .L92+4
	str	r3, [sp, #20]
	ldr	r6, .L92+8
	ldr	fp, .L92+12
	ldr	r9, .L92+16
	ldr	r8, .L92+20
	add	r7, r4, #896
	b	.L24
.L89:
	ldr	r3, .L92+24
	ldrh	r3, [r3]
	ands	r3, r3, #256
	bne	.L13
	ldr	r0, .L92+28
	ldr	r2, [r5, #60]
	ldr	r1, [r5]
	ldr	ip, [r0]
	add	r1, r1, r2
	ldr	r0, [r5, #4]
	ldr	r2, [r5, #56]
	ldr	r10, [r4]
	add	r2, r0, r2
	ldr	r0, [r4, #44]
	sub	ip, r1, ip
	sub	r0, r2, r0
	cmp	r10, #13
	str	r3, [r4, #40]
	str	r3, [r5, #24]
	stmib	r4, {r1, r2, ip}
	mov	r3, r10
	str	r0, [r4, #16]
	beq	.L85
.L19:
	ldr	r2, [r6]
	cmp	r2, #4
	beq	.L86
	cmp	r2, #5
	bne	.L23
	cmp	r3, #0
	bne	.L20
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L20
	mov	r1, #4
	mov	r2, #28
	mov	r3, #44
	str	r1, [r6]
	ldr	r1, .L92+4
	str	r2, [r1, #688]
	str	r3, [r1, #644]
.L20:
	add	r4, r4, #64
	cmp	r4, r7
	beq	.L87
.L24:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L88
	ldrh	r3, [fp]
	tst	r3, #256
	bne	.L89
.L13:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L14
	ldr	r0, [r5]
	ldr	r2, [r5, #60]
	ldr	r1, .L92+28
	add	r2, r0, r2
	ldr	r3, [r5, #56]
	ldr	r0, [r5, #4]
	ldr	r1, [r1]
	add	r3, r3, r0
	ldr	r0, [r8]
	sub	r1, r2, r1
	str	r1, [r4, #12]
	stmib	r4, {r2, r3}
	sub	r1, r3, r0
	str	r1, [r4, #16]
	str	r0, [r4, #44]
.L18:
	ldr	r3, [r4]
	cmp	r3, #13
	bne	.L19
.L28:
	ldr	r3, [r6]
	cmp	r3, #0
	blt	.L21
	mov	r2, #0
	ldr	r1, .L92+32
	ldr	r0, .L92+36
	ldr	r3, .L92+40
	mov	lr, pc
	bx	r3
.L21:
	mvn	r3, #0
	add	r4, r4, #64
	cmp	r4, r7
	str	r3, [r6]
	bne	.L24
.L87:
	ldr	r3, [r6]
	cmp	r3, #2
	beq	.L90
.L6:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L88:
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
	ldr	r10, .L92+44
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L84
	ldrh	r3, [fp]
	tst	r3, #256
	beq	.L84
	ldr	r3, .L92+24
	ldrh	r3, [r3]
	tst	r3, #256
	bne	.L84
	ldr	r3, [r9, #28]
	cmp	r3, #1
	ldr	r10, [r4]
	beq	.L82
	ldr	r3, .L92+48
	ldrh	r3, [r3, #48]
	tst	r3, #512
	bne	.L11
.L91:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L11
	mov	r3, #1
	mov	lr, r4
	str	r3, [r4, #40]
	ldr	ip, .L92+52
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	mov	lr, #1
	str	lr, [r5, #24]
	stm	ip, {r0, r1, r2, r3}
	b	.L9
.L84:
	ldr	r10, [r4]
.L9:
	ldr	r3, .L92+28
	ldr	r2, [r4, #4]
	ldr	r1, [r3]
	ldr	r3, [r4, #8]
	sub	r2, r2, r1
	ldr	r1, [r8]
	cmp	r10, #13
	sub	r3, r3, r1
	str	r3, [r4, #16]
	str	r2, [r4, #12]
	mov	r3, r10
	bne	.L19
.L85:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L20
	b	.L28
.L14:
	ldr	r3, [r9, #60]
	cmp	r3, #0
	beq	.L18
	ldr	r1, .L92+28
	ldm	r9, {r2, r3}
	ldr	r0, [r8]
	ldr	r1, [r1]
	add	r2, r2, #32
	add	r3, r3, #20
	sub	r1, r2, r1
	str	r2, [r4, #4]
	sub	r2, r3, r0
	str	r1, [r4, #12]
	str	r3, [r4, #8]
	str	r2, [r4, #16]
	str	r0, [r4, #44]
	b	.L18
.L86:
	cmp	r3, #1
	bne	.L20
	ldr	r2, [r4, #40]
	cmp	r2, #0
	movne	r2, #3
	ldrne	r1, .L92+56
	strne	r2, [r6]
	strne	r3, [r1]
	b	.L20
.L23:
	cmp	r2, #3
	cmpeq	r3, #2
	bne	.L20
	ldr	r3, [r4, #40]
	cmp	r3, #0
	movne	r3, #2
	strne	r3, [r6]
	b	.L20
.L11:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	bne	.L9
	ldr	r3, [r4, #36]
	cmp	r3, #1
	str	r3, [sp, #28]
	bne	.L9
	mov	lr, r4
	str	r3, [r4, #40]
	ldr	ip, .L92+52
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	ldr	lr, [sp, #28]
	str	lr, [r5, #24]
	stm	ip, {r0, r1, r2, r3}
	b	.L9
.L90:
	ldr	r3, .L92+4
	mov	r2, r3
	mov	r1, r2
	mov	r5, #38
	mov	r7, #16
	mov	r8, #86
	mov	r9, #74
	mov	r0, r1
	stm	sp, {r5, r7, r8, r9}
	ldr	r4, .L92+44
	ldr	r3, [r3, #288]
	ldr	r2, [r2, #284]
	ldr	r1, [r1, #260]
	ldr	r0, [r0, #264]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L92+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r7, r8, r9}
	ldr	r3, [r3, #352]
	ldr	r2, [r2, #348]
	ldr	r1, [r1, #324]
	ldr	r0, [r0, #328]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L92+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r7, r8, r9}
	ldr	r3, [r3, #416]
	ldr	r2, [r2, #412]
	ldr	r1, [r1, #388]
	ldr	r0, [r0, #392]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L92+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r7, r8, r9}
	ldr	r3, [r3, #480]
	ldr	r2, [r2, #476]
	ldr	r1, [r1, #452]
	ldr	r0, [r0, #456]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L92+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r7, r8, r9}
	ldr	r3, [r3, #544]
	ldr	r2, [r2, #540]
	ldr	r1, [r1, #516]
	ldr	r0, [r0, #520]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r6]
	b	.L6
.L82:
	cmp	r10, #9
	beq	.L9
	ldr	r3, .L92+48
	ldrh	r3, [r3, #48]
	tst	r3, #512
	bne	.L11
	b	.L91
.L93:
	.align	2
.L92:
	.word	goose
	.word	objects
	.word	tasks
	.word	oldButtons
	.word	human
	.word	gooseHoff
	.word	buttons
	.word	voff
	.word	28400
	.word	writing
	.word	playSoundB
	.word	collision
	.word	67109120
	.word	stolenObject
	.word	sprinklerOn
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
	ldr	r2, .L107
	ldr	r3, .L107+4
	ldr	r0, [r2]
	ldr	r2, .L107+8
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r1, .L107+12
	mov	r6, #512
	ldr	r5, [r3]
	ldr	lr, .L107+16
	add	r4, r0, #1
	add	ip, r2, #896
	b	.L99
.L106:
	cmp	r4, r3
	beq	.L95
.L96:
	strh	r6, [r1, #16]	@ movhi
.L98:
	ldr	r3, [r2, #16]
	add	r7, r2, #48
	ldr	r9, [r2, #60]
	ldm	r7, {r7, r8}
	and	r3, r3, lr
	add	r2, r2, #64
	orr	r3, r3, r9
	add	r7, r7, r8, lsl #5
	cmp	ip, r2
	strh	r3, [r1, #18]	@ movhi
	strh	r7, [r1, #20]	@ movhi
	add	r1, r1, #8
	beq	.L105
.L99:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	add	r7, r3, #255
	movlt	r3, r7
	asr	r3, r3, #8
	add	r3, r3, #28
	cmp	r0, r3
	bne	.L106
.L95:
	cmp	r5, #0
	beq	.L97
	ldr	r3, [r2]
	cmp	r3, #11
	beq	.L96
.L97:
	ldrb	r3, [r2, #12]	@ zero_extendqisi2
	ldr	r7, [r2, #56]
	orr	r3, r3, r7
	strh	r3, [r1, #16]	@ movhi
	b	.L98
.L105:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L108:
	.align	2
.L107:
	.word	sb
	.word	gateOpen
	.word	objects
	.word	shadowOAM
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
	.comm	sprinklerOn,4,4
	.comm	shadowCount,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
