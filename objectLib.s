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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L4
	ldr	lr, [r7]
	ldr	r7, .L4+4
	str	r2, [r7]
	mov	r7, #32
	ldr	r3, .L4+8
	str	r7, [r3, #28]
	ldr	r7, .L4+12
	str	r2, [r7]
	mov	r7, #170
	str	r7, [r3, #4]
	str	r7, [r3, #20]
	mov	r7, #380
	str	r7, [r3, #8]
	str	r7, [r3, #24]
	mov	r7, #32768
	str	r7, [r3, #60]
	mov	r7, #24
	mov	r8, #560
	mov	r1, #8
	mov	r0, #1
	mov	ip, #2
	mov	fp, #16
	mov	r5, #16384
	mov	r4, #130
	str	r7, [r3, #48]
	mov	r7, #28
	str	r8, [r3, #72]
	str	r8, [r3, #88]
	ldr	r8, .L4+16
	sub	sp, sp, #12
	sub	r6, lr, #1
	add	lr, lr, #40
	str	r6, [r3, #132]
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #100]
	str	r2, [r3, #120]
	str	r2, [r3, #124]
	str	r0, [r3, #64]
	str	r0, [r3, #116]
	str	r4, [r3, #68]
	str	r4, [r3, #84]
	str	r7, [r3, #112]
	str	fp, [r3, #32]
	str	fp, [r3, #156]
	str	r5, [r3, #56]
	str	r1, [r3, #92]
	str	r1, [r3, #96]
	str	r1, [r3, #160]
	str	ip, [r3, #128]
	str	ip, [r8]
	str	lr, [sp, #4]
	mov	lr, #58
	str	lr, [r3, #260]
	mov	lr, #120
	ldr	r7, .L4
	ldr	r7, [r7, #4]
	str	r6, [r3, #148]
	add	r6, r7, #18
	str	r6, [r3, #136]
	sub	r6, r7, #8
	str	r6, [r3, #152]
	ldr	r6, .L4+20
	str	r6, [r3, #264]
	mov	r6, #196
	str	lr, [r3, #276]
	mov	lr, #500
	str	r6, [r3, #196]
	str	r6, [r3, #216]
	ldr	r6, .L4+24
	mov	r9, #3
	mov	r10, #30
	mov	r8, #28
	str	r6, [r3, #200]
	str	r6, [r3, #212]
	mov	r6, #4
	str	lr, [r3, #280]
	mov	lr, #219
	str	r0, [r3, #164]
	str	r2, [r3, #188]
	str	r8, [r3, #176]
	str	r2, [r3, #180]
	str	r0, [r3, #228]
	str	r2, [r3, #252]
	str	r2, [r3, #244]
	str	r2, [r3, #292]
	str	r2, [r3, #316]
	str	r5, [r3, #184]
	str	fp, [r3, #220]
	str	r1, [r3, #224]
	str	r5, [r3, #248]
	str	r1, [r3, #284]
	str	r1, [r3, #288]
	str	r5, [r3, #312]
	str	r9, [r3, #192]
	str	r10, [r3, #240]
	str	r10, [r3, #304]
	str	r6, [r3, #256]
	str	r4, [r3, #452]
	str	r4, [r3, #468]
	mov	r4, #5
	str	lr, [r3, #328]
	mov	lr, #215
	str	r4, [r3, #320]
	mov	r4, #125
	str	lr, [r3, #344]
	mov	lr, #6
	str	r4, [r3, #324]
	str	r4, [r3, #340]
	mov	r4, #27
	str	lr, [r3, #384]
	mov	lr, #7
	str	r8, [r3, #432]
	str	r4, [r3, #368]
	mov	r8, r4
	mov	r4, #128
	mov	r6, #32768
	str	lr, [r3, #448]
	mov	lr, #230
	str	r4, [r3, #388]
	str	r4, [r3, #404]
	ldr	r4, .L4+28
	str	r0, [r3, #308]
	str	r0, [r3, #356]
	str	r2, [r3, #376]
	str	r2, [r3, #380]
	str	r0, [r3, #420]
	str	r6, [r3, #440]
	str	r2, [r3, #444]
	str	r0, [r3, #484]
	str	lr, [r3, #456]
	str	r1, [r3, #348]
	str	r1, [r3, #352]
	str	ip, [r3, #372]
	str	r1, [r3, #412]
	str	fp, [r3, #416]
	str	ip, [r3, #436]
	str	r1, [r3, #476]
	str	r1, [r3, #480]
	str	r4, [r3, #392]
	str	r4, [r3, #408]
	str	lr, [r3, #472]
	ldr	lr, [sp, #4]
	str	lr, [r3, #580]
	str	lr, [r3, #596]
	mov	lr, #9
	str	lr, [r3, #576]
	mov	lr, #10
	str	lr, [r3, #640]
	mov	lr, #152
	add	r7, r7, #19
	str	r7, [r3, #584]
	str	r7, [r3, #600]
	str	r8, [r3, #496]
	mov	r7, #32
	mov	r8, #98
	str	lr, [r3, #516]
	str	lr, [r3, #532]
	mov	lr, #29
	str	r2, [r3, #504]
	str	r2, [r3, #508]
	str	r0, [r3, #548]
	str	r2, [r3, #568]
	str	r2, [r3, #572]
	str	r0, [r3, #612]
	str	r2, [r3, #632]
	str	r2, [r3, #636]
	str	lr, [r3, #560]
	str	lr, [r3, #624]
	str	r9, [r3, #500]
	str	r1, [r3, #512]
	str	r1, [r3, #540]
	str	r1, [r3, #544]
	str	r4, [r3, #520]
	str	r4, [r3, #536]
	str	ip, [r3, #564]
	str	r1, [r3, #604]
	str	r1, [r3, #608]
	str	r9, [r3, #628]
	str	r1, [r3, #668]
	str	r7, [r3, #672]
	str	r8, [r3, #644]
	str	r0, [r3, #804]
	mov	r0, #11
	str	r0, [r3, #704]
	mov	r0, #12
	str	r0, [r3, #768]
	mov	r0, #13
	str	r8, [r3, #660]
	str	r0, [r3, #832]
	mov	r8, #4
	mov	r0, #49152
	str	r8, [r3, #692]
	str	r6, [r3, #696]
	mov	r8, #24
	str	r6, [r3, #760]
	str	r0, [r3, #700]
	str	r0, [r3, #764]
	mov	r6, #5
	mov	r0, #162
	ldr	lr, .L4+32
	str	lr, [r3, #648]
	str	lr, [r3, #664]
	ldr	lr, .L4+36
	str	r2, [r3, #676]
	str	r2, [r3, #708]
	str	r2, [r3, #724]
	str	r2, [r3, #740]
	str	r2, [r3, #828]
	str	r8, [r3, #688]
	str	r1, [r3, #732]
	str	r7, [r3, #736]
	str	r8, [r3, #752]
	str	r6, [r3, #756]
	str	fp, [r3, #796]
	str	r1, [r3, #800]
	str	r4, [r3, #776]
	str	r4, [r3, #792]
	str	r5, [r3, #824]
	str	r10, [r3, #816]
	str	ip, [r3, #820]
	str	r1, [r3, #860]
	str	lr, [r3, #712]
	str	lr, [r3, #728]
	str	r0, [r3, #772]
	str	r2, [r3, #868]
	str	r2, [r3, #888]
	str	r2, [r3, #892]
	mov	r2, #220
	str	r2, [r3, #836]
	str	r2, [r3, #852]
	mov	r2, #900
	str	r0, [r3, #788]
	str	r1, [r3, #864]
	str	r10, [r3, #880]
	str	r9, [r3, #884]
	str	r2, [r3, #840]
	str	r2, [r3, #856]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	human
	.word	sprinklerOn
	.word	objects
	.word	sprinklerTimer
	.word	hatIndex
	.word	430
	.word	918
	.word	894
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L108
	ldr	r3, [r5, #40]
	cmp	r3, #2
	moveq	r3, #6
	movne	r3, #7
	sub	sp, sp, #44
	str	r3, [sp, #24]
	moveq	r3, #8
	movne	r3, #11
	mov	r6, #0
	str	r3, [sp, #20]
	ldr	r4, .L108+4
	ldr	r9, .L108+8
	ldr	fp, .L108+12
	ldr	r7, .L108+16
	ldr	r10, .L108+20
	ldr	r8, .L108+24
	b	.L35
.L103:
	ldr	r1, .L108+28
	ldrh	r1, [r1]
	ands	r1, r1, #256
	bne	.L23
	cmp	r2, #0
	beq	.L24
	ldr	r2, [r5, #60]
	ldr	r0, [r5]
	ldr	ip, [r5, #4]
	add	r0, r0, r2
	ldr	r2, [r5, #56]
	add	r2, ip, r2
	ldr	ip, [r4, #44]
	sub	r3, r0, r3
	sub	ip, r2, ip
	stmib	r4, {r0, r2, r3, ip}
	str	r1, [r4, #40]
	str	r1, [r5, #24]
	ldr	r3, [r4]
.L22:
	cmp	r3, #13
	beq	.L99
.L30:
	ldr	r2, [fp]
	cmp	r2, #4
	beq	.L100
	cmp	r2, #5
	bne	.L34
	cmp	r3, #0
	bne	.L31
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #60]
	cmp	r3, #0
	movne	r3, #4
	strne	r3, [fp]
.L31:
	add	r6, r6, #1
	cmp	r6, #14
	add	r4, r4, #64
	beq	.L101
.L35:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L102
	ldrh	r3, [r10]
	tst	r3, #256
	ldr	r2, [r5, #24]
	ldr	r3, [r9]
	bne	.L103
.L23:
	cmp	r2, #0
	beq	.L24
	ldr	r0, [r5, #4]
	ldr	r2, [r5, #56]
	ldr	r1, [r5]
	ldr	ip, [r5, #60]
	add	r2, r0, r2
	ldr	r0, [r8]
	add	r1, r1, ip
	str	r2, [r4, #8]
	sub	r3, r1, r3
	sub	r2, r2, r0
	str	r2, [r4, #16]
	str	r0, [r4, #44]
	str	r3, [r4, #12]
	str	r1, [r4, #4]
.L28:
	ldr	r3, [r4]
	cmp	r3, #13
	bne	.L30
.L39:
	ldr	r3, [fp]
	cmp	r3, #0
	blt	.L32
	mov	r2, #0
	ldr	r1, .L108+32
	ldr	r0, .L108+36
	ldr	r3, .L108+40
	mov	lr, pc
	bx	r3
.L32:
	mvn	r3, #0
	add	r6, r6, #1
	cmp	r6, #14
	str	r3, [fp]
	add	r4, r4, #64
	bne	.L35
.L101:
	ldr	r3, [fp]
	cmp	r3, #2
	beq	.L104
.L6:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L102:
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
	ldr	ip, .L108+44
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L9
	ldr	ip, .L108+48
	ldr	r3, [ip]
	str	r3, [sp, #16]
.L10:
	ldr	r3, [sp, #16]
	cmp	r6, r3
	beq	.L105
.L14:
	cmp	r6, #9
	beq	.L95
.L98:
	ldr	r3, [r4]
.L18:
	ldr	r0, [r9]
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #8]
	sub	r1, r1, r0
	ldr	r0, [r8]
	cmp	r3, #13
	sub	r2, r2, r0
	str	r1, [r4, #12]
	str	r2, [r4, #16]
	bne	.L30
.L99:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L31
	b	.L39
.L24:
	ldr	r0, [r7, #60]
	ldr	r1, [r7]
	cmp	r0, #0
	ldr	r2, [r7, #4]
	sub	r3, r1, r3
	beq	.L29
	ldr	r0, [r8]
	str	r2, [r4, #8]
	sub	r2, r2, r0
	str	r1, [r4, #4]
	str	r3, [r4, #12]
	str	r2, [r4, #16]
	str	r0, [r4, #44]
	b	.L28
.L100:
	cmp	r3, #1
	bne	.L31
	ldr	r2, [r4, #40]
	cmp	r2, #0
	ldrne	r2, .L108+52
	strne	r3, [r2]
	b	.L31
.L34:
	cmp	r2, #3
	cmpeq	r3, #2
	bne	.L31
	ldr	r3, [r4, #40]
	cmp	r3, #0
	movne	r3, #2
	strne	r3, [fp]
	b	.L31
.L9:
	ldrh	r3, [r10]
	ldr	ip, .L108+48
	tst	r3, #256
	ldr	r3, [ip]
	str	r3, [sp, #16]
	beq	.L10
	ldr	r3, .L108+28
	ldrh	r3, [r3]
	tst	r3, #256
	bne	.L10
	ldr	r3, [r7, #28]
	cmp	r3, #1
	beq	.L106
.L11:
	ldr	r3, .L108+56
	ldrh	r3, [r3, #48]
	tst	r3, #512
	bne	.L13
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L13
	mov	r3, #1
	mov	lr, r4
	str	r3, [r4, #40]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, .L108+60
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	ldr	lr, [sp, #32]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #28]
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	ldr	lr, [sp, #32]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #28]
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	mov	lr, #1
	ldr	r3, [sp, #32]
	str	lr, [r5, #24]
	ldm	r3, {r0, r1, r2, r3}
	ldr	lr, [sp, #28]
	stm	lr, {r0, r1, r2, r3}
	ldr	r3, [sp, #16]
	cmp	r6, r3
	bne	.L14
.L105:
	ldr	r3, [r7, #28]
	cmp	r3, #1
	beq	.L107
	mov	r2, #2
	ldr	r3, [r7]
	sub	r3, r3, #2
	str	r3, [r4, #4]
	str	r2, [r4, #36]
	ldr	r3, [r4]
.L16:
	ldr	r2, [r7, #4]
	ldr	r1, [r4, #40]
	add	r2, r2, #8
	cmp	r1, #0
	str	r2, [r4, #8]
	movne	r2, #50
	strne	r2, [ip]
	b	.L18
.L29:
	ldr	ip, [r4, #44]
	sub	ip, r2, ip
	stmib	r4, {r1, r2, r3, ip}
	str	r0, [r4, #40]
	ldr	r3, [r4]
	b	.L22
.L95:
	ldr	r3, [r7, #28]
	cmp	r3, #1
	ldr	r3, [r7]
	beq	.L42
	mov	r2, #1
	ldr	r1, .L108+4
	add	r3, r3, #45
	str	r3, [r1, #580]
	str	r2, [r1, #612]
.L21:
	ldr	r3, [r7, #4]
	ldr	r2, .L108+4
	add	r3, r3, #19
	str	r3, [r2, #584]
	b	.L98
.L107:
	ldr	r3, [r4]
.L40:
	mov	r1, #0
	ldr	r2, [r7]
	add	r2, r2, #10
	str	r2, [r4, #4]
	str	r1, [r4, #36]
	b	.L16
.L13:
	ldr	r3, [r5, #28]
	cmp	r3, #1
	bne	.L10
	ldr	r3, [r4, #36]
	cmp	r3, #1
	str	r3, [sp, #36]
	bne	.L10
	mov	lr, r4
	ldr	r2, [sp, #36]
	str	r2, [r4, #40]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, .L108+60
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	ldr	lr, [sp, #32]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #28]
	stmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #28]
	ldr	lr, [sp, #32]
	ldmia	lr!, {r0, r1, r2, r3}
	str	lr, [sp, #32]
	ldr	lr, [sp, #28]
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [sp, #32]
	str	lr, [sp, #28]
	ldr	lr, [sp, #36]
	ldm	r3, {r0, r1, r2, r3}
	str	lr, [r5, #24]
	ldr	lr, [sp, #28]
	stm	lr, {r0, r1, r2, r3}
	b	.L10
.L106:
	ldr	r3, [r4]
	cmp	r3, #9
	bne	.L11
	ldr	r2, [sp, #16]
	cmp	r6, r2
	beq	.L40
	cmp	r6, #9
	bne	.L18
	ldr	r3, [r7]
.L42:
	mov	r2, #0
	ldr	r1, .L108+4
	add	r3, r3, #58
	str	r3, [r1, #580]
	str	r2, [r1, #612]
	b	.L21
.L104:
	ldr	r3, .L108+4
	mov	r2, r3
	mov	r1, r2
	mov	r5, #38
	mov	r6, #16
	mov	r7, #86
	mov	r8, #74
	mov	r0, r1
	stm	sp, {r5, r6, r7, r8}
	ldr	r4, .L108+44
	ldr	r3, [r3, #288]
	ldr	r2, [r2, #284]
	ldr	r1, [r1, #260]
	ldr	r0, [r0, #264]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L108+4
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
	ldr	r3, .L108+4
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
	ldr	r3, .L108+4
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
	ldr	r3, .L108+4
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
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [fp]
	b	.L6
.L109:
	.align	2
.L108:
	.word	goose
	.word	objects
	.word	voff
	.word	tasks
	.word	human
	.word	oldButtons
	.word	gooseHoff
	.word	buttons
	.word	28400
	.word	writing
	.word	playSoundB
	.word	collision
	.word	hatIndex
	.word	sprinklerOn
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L134
	ldr	r8, .L134+4
	ldr	r4, .L134+8
	ldr	r3, .L134+12
	ldr	r0, [r9]
	mov	r2, r8
	mov	r1, r4
	mov	r7, #512
	ldr	r6, [r3]
	ldr	lr, .L134+16
	sub	sp, sp, #20
	add	r5, r0, #1
	add	ip, r8, #896
	b	.L115
.L133:
	cmp	r5, r3
	beq	.L111
.L112:
	strh	r7, [r1, #16]	@ movhi
.L114:
	ldr	r3, [r2, #16]
	ldr	r10, [r2, #60]
	and	r3, r3, lr
	ldr	fp, [r2, #52]
	orr	r3, r3, r10
	ldr	r10, [r2, #48]
	add	r2, r2, #64
	add	r10, r10, fp, lsl #5
	cmp	ip, r2
	strh	r3, [r1, #18]	@ movhi
	strh	r10, [r1, #20]	@ movhi
	add	r1, r1, #8
	beq	.L132
.L115:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	add	r10, r3, #255
	movlt	r3, r10
	asr	r3, r3, #8
	add	r3, r3, #28
	cmp	r0, r3
	bne	.L133
.L111:
	cmp	r6, #0
	beq	.L113
	ldr	r3, [r2]
	cmp	r3, #11
	beq	.L112
.L113:
	ldrb	r3, [r2, #12]	@ zero_extendqisi2
	ldr	r10, [r2, #56]
	orr	r3, r3, r10
	strh	r3, [r1, #16]	@ movhi
	b	.L114
.L132:
	ldr	r3, .L134+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L116
	ldr	r2, [r8, #72]
	cmp	r2, #0
	add	r3, r2, #255
	movge	r3, r2
	ldr	r1, [r9]
	asr	r3, r3, #8
	add	r3, r3, #28
	cmp	r1, r3
	beq	.L117
	add	r1, r1, #1
	cmp	r1, r3
	beq	.L117
.L116:
	mov	r3, #512
	strh	r3, [r4, #120]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L117:
	mov	fp, #64
	mov	r3, #32
	ldr	r9, .L134+24
	ldr	ip, [r9]
	ldr	lr, .L134+28
	add	ip, ip, #1
	smull	r1, lr, ip, lr
	ldr	r6, .L134+32
	ldr	r5, .L134+36
	ldr	r1, [r8, #68]
	ldr	r7, [r6]
	ldr	r5, [r5]
	ldr	r10, .L134+40
	str	fp, [sp, #12]
	asr	r6, ip, #31
	sub	r0, r2, #12
	rsb	r6, r6, lr, asr #1
	ldr	r2, [r10, #4]
	ldr	lr, [r10]
	sub	r1, r1, #12
	str	r3, [sp, #8]
	stm	sp, {r2, lr}
	ldr	r8, .L134+44
	mov	r2, r3
	str	ip, [r9]
	add	r6, r6, r6, lsl #1
	sub	r6, ip, r6, lsl #2
	sub	r7, r1, r7
	sub	r5, r0, r5
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r2, #3
	ldrne	r3, .L134+48
	strne	r2, [r3]
	lsl	r3, r5, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	cmp	r6, #5
	strh	r3, [r4, #130]	@ movhi
	ldrle	r3, .L134+52
	ldrgt	r3, .L134+56
	and	r7, r7, #255
	strh	r7, [r4, #128]	@ movhi
	strh	r3, [r4, #132]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L135:
	.align	2
.L134:
	.word	sb
	.word	objects
	.word	shadowOAM
	.word	gateOpen
	.word	511
	.word	sprinklerOn
	.word	sprinklerTimer
	.word	715827883
	.word	voff
	.word	gooseHoff
	.word	human
	.word	collision
	.word	tasks
	.word	4504
	.word	4508
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
	.comm	hatIndex,4,4
	.comm	sprinklerTimer,4,4
	.comm	sprinklerOn,4,4
	.comm	shadowCount,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
