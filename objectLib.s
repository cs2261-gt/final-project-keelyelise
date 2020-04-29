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
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L4
	ldr	lr, [r8]
	mov	r8, #32
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	r8, [r3, #28]
	mov	r8, #16
	str	r8, [r3, #32]
	str	r8, [r3, #156]
	mov	r8, #170
	str	r8, [r3, #4]
	str	r8, [r3, #20]
	mov	r8, #380
	str	r8, [r3, #8]
	str	r8, [r3, #24]
	mov	r8, #24
	str	r8, [r3, #48]
	mov	r8, #28
	mov	r9, #560
	mov	ip, #2
	mov	r1, #8
	mov	r0, #1
	mov	fp, #16384
	mov	r5, #32768
	mov	r4, #130
	str	r8, [r3, #112]
	mov	r8, #9
	str	r9, [r3, #72]
	str	r9, [r3, #88]
	ldr	r9, .L4+16
	str	ip, [r9]
	ldr	r9, .L4+20
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #100]
	str	r2, [r3, #120]
	str	r2, [r3, #124]
	str	fp, [r3, #56]
	str	r5, [r3, #60]
	str	r0, [r3, #64]
	str	r0, [r3, #116]
	str	r4, [r3, #68]
	str	r4, [r3, #84]
	str	r1, [r3, #92]
	str	r1, [r3, #96]
	str	r1, [r3, #160]
	str	ip, [r3, #128]
	str	r8, [r9]
	ldr	r8, .L4
	ldr	r8, [r8, #4]
	sub	r7, lr, #1
	mov	r6, #196
	str	r7, [r3, #132]
	str	r7, [r3, #148]
	add	r7, r8, r1
	str	r7, [r3, #136]
	sub	r7, r8, #8
	mov	r9, #28
	str	r7, [r3, #152]
	mov	r7, #4
	str	r6, [r3, #196]
	str	r6, [r3, #212]
	ldr	r6, .L4+24
	str	r6, [r3, #200]
	str	r6, [r3, #216]
	mov	r6, #58
	mov	r10, #3
	str	r9, [r3, #176]
	str	r7, [r3, #256]
	mov	r9, #16
	mov	r7, #30
	str	r6, [r3, #260]
	str	r6, [r3, #276]
	add	r6, r6, #372
	str	r0, [r3, #164]
	str	fp, [r3, #184]
	str	r2, [r3, #188]
	str	r2, [r3, #180]
	str	r9, [r3, #220]
	str	r0, [r3, #228]
	str	fp, [r3, #248]
	str	r2, [r3, #252]
	str	r2, [r3, #244]
	str	r2, [r3, #292]
	str	fp, [r3, #312]
	str	r2, [r3, #316]
	str	r10, [r3, #192]
	str	r7, [r3, #240]
	str	r7, [r3, #304]
	str	r6, [r3, #264]
	str	r1, [r3, #224]
	str	r1, [r3, #284]
	str	r1, [r3, #288]
	str	r6, [r3, #280]
	str	r4, [r3, #452]
	str	r4, [r3, #468]
	mov	r4, #5
	str	r4, [r3, #320]
	mov	r4, #31
	str	r4, [r3, #368]
	mov	r4, #6
	str	r4, [r3, #384]
	mov	r4, #7
	str	r4, [r3, #448]
	mov	r4, #125
	str	r4, [r3, #324]
	str	r4, [r3, #340]
	mov	r4, #219
	mov	r6, r9
	str	r9, [r3, #416]
	mov	r9, #28
	str	r4, [r3, #328]
	str	r4, [r3, #344]
	mov	r4, #128
	str	r9, [r3, #432]
	mov	r9, #230
	str	r4, [r3, #388]
	str	r4, [r3, #404]
	ldr	r4, .L4+28
	add	lr, lr, #40
	str	r0, [r3, #308]
	str	r0, [r3, #356]
	str	r2, [r3, #376]
	str	r2, [r3, #380]
	str	r10, [r3, #372]
	str	r0, [r3, #420]
	str	r5, [r3, #440]
	str	r2, [r3, #444]
	str	r0, [r3, #484]
	str	r9, [r3, #456]
	str	r4, [r3, #392]
	str	r4, [r3, #408]
	str	r1, [r3, #348]
	str	r1, [r3, #352]
	str	r1, [r3, #412]
	str	ip, [r3, #436]
	str	r1, [r3, #476]
	str	r1, [r3, #480]
	str	r9, [r3, #472]
	str	lr, [r3, #580]
	str	lr, [r3, #596]
	mov	lr, #10
	str	lr, [r3, #640]
	mov	lr, #29
	mov	r9, #9
	str	lr, [r3, #496]
	str	lr, [r3, #560]
	str	lr, [r3, #624]
	mov	lr, #152
	add	r8, r8, #19
	str	r9, [r3, #576]
	str	r8, [r3, #584]
	mov	r9, #98
	str	r8, [r3, #600]
	mov	r8, #32
	str	lr, [r3, #516]
	str	lr, [r3, #532]
	ldr	lr, .L4+32
	str	r2, [r3, #504]
	str	r2, [r3, #508]
	str	r0, [r3, #500]
	str	r4, [r3, #520]
	str	r4, [r3, #536]
	str	r0, [r3, #548]
	str	r2, [r3, #568]
	str	r2, [r3, #572]
	str	r0, [r3, #612]
	str	r2, [r3, #632]
	str	r2, [r3, #636]
	str	r10, [r3, #628]
	str	r8, [r3, #672]
	str	r9, [r3, #644]
	str	r1, [r3, #512]
	str	r1, [r3, #540]
	str	r1, [r3, #544]
	str	ip, [r3, #564]
	str	r1, [r3, #604]
	str	r1, [r3, #608]
	str	r1, [r3, #668]
	str	lr, [r3, #648]
	str	r0, [r3, #804]
	mov	r0, #11
	str	r0, [r3, #704]
	mov	r0, #12
	str	r0, [r3, #768]
	mov	r0, #13
	str	r0, [r3, #832]
	mov	r0, #49152
	str	r0, [r3, #700]
	str	r0, [r3, #764]
	mvn	r0, #7
	str	r9, [r3, #660]
	str	r0, [r3, #724]
	mov	r9, #24
	str	r0, [r3, #740]
	mov	r0, #162
	str	lr, [r3, #664]
	ldr	lr, .L4+36
	str	r2, [r3, #676]
	str	r5, [r3, #696]
	str	r9, [r3, #688]
	str	r8, [r3, #736]
	str	r2, [r3, #708]
	str	r5, [r3, #760]
	str	r9, [r3, #752]
	str	r10, [r3, #756]
	str	r6, [r3, #796]
	str	r4, [r3, #776]
	str	r4, [r3, #792]
	str	fp, [r3, #824]
	str	r2, [r3, #828]
	str	r7, [r3, #816]
	str	lr, [r3, #712]
	str	lr, [r3, #728]
	str	ip, [r3, #692]
	str	r1, [r3, #732]
	str	r1, [r3, #800]
	str	ip, [r3, #820]
	str	r1, [r3, #860]
	str	r0, [r3, #772]
	str	r0, [r3, #788]
	str	r2, [r3, #868]
	str	r2, [r3, #888]
	str	r2, [r3, #892]
	mov	r2, #240
	ldr	r5, .L4+40
	str	r7, [r3, #880]
	str	r10, [r3, #884]
	str	r5, [r3, #840]
	str	r5, [r3, #856]
	str	r1, [r3, #864]
	str	r2, [r3, #836]
	str	r2, [r3, #852]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	human
	.word	sprinklerOn
	.word	sprinklerTimer
	.word	objects
	.word	hatIndex
	.word	keyIndex
	.word	918
	.word	894
	.word	411
	.word	670
	.word	910
	.size	initObjects, .-initObjects
	.align	2
	.global	updateObjects
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObjects, %function
updateObjects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L114
	ldr	r3, [r5, #40]
	cmp	r3, #2
	moveq	r3, #6
	movne	r3, #7
	sub	sp, sp, #28
	str	r3, [sp, #20]
	moveq	r3, #8
	movne	r3, #11
	mov	r6, #0
	str	r3, [sp, #16]
	ldr	r4, .L114+4
	ldr	r9, .L114+8
	ldr	r8, .L114+12
	ldr	r7, .L114+16
	ldr	r10, .L114+20
.L36:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L107
	ldrh	r3, [r10]
	tst	r3, #256
	ldr	r2, [r5, #24]
	ldr	r3, [r9]
	beq	.L20
	ldr	r1, .L114+24
	ldrh	r1, [r1]
	ands	r1, r1, #256
	bne	.L20
	cmp	r2, #0
	beq	.L21
	ldr	r0, [r5]
	ldr	r2, [r5, #60]
	ldr	ip, [r5, #4]
	add	r2, r0, r2
	ldr	r0, [r5, #56]
	add	r0, ip, r0
	ldr	lr, .L114+28
	add	ip, r0, r2, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	ldr	ip, [r4, #44]
	sub	r3, r2, r3
	sub	ip, r0, ip
	str	r3, [r4, #12]
	str	r1, [r4, #40]
	str	r1, [r5, #24]
	str	r2, [r4, #4]
	str	r0, [r4, #8]
	str	ip, [r4, #16]
	lsl	r3, r2, #10
	beq	.L29
	ldr	ip, [r4, #32]
	add	r2, r2, ip
	add	ip, r0, r2, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	lsl	r2, r2, #10
	bne	.L108
.L29:
	mov	r3, #1
	str	r3, [r4, #36]
	ldr	r3, [r4]
.L19:
	cmp	r3, #13
	beq	.L109
.L31:
	ldr	r2, [r8]
	cmp	r2, #4
	beq	.L110
.L35:
	cmp	r2, #5
	bne	.L34
	ldr	r3, [r7, #60]
	cmp	r3, #0
	movne	r3, #4
	strne	r3, [r8]
.L34:
	add	r6, r6, #1
	cmp	r6, #14
	add	r4, r4, #64
	bne	.L36
	ldr	r3, [r8]
	cmp	r3, #2
	beq	.L111
.L6:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	cmp	r2, #0
	beq	.L21
	ldr	ip, [r5, #4]
	ldr	r1, [r5, #56]
	ldr	r0, .L114+32
	add	r1, ip, r1
	ldr	r2, [r5]
	ldr	ip, [r5, #60]
	ldr	r0, [r0]
	add	r2, r2, ip
	sub	r3, r2, r3
	sub	ip, r1, r0
	str	r0, [r4, #44]
	str	ip, [r4, #16]
	str	r1, [r4, #8]
	str	r3, [r4, #12]
	str	r2, [r4, #4]
.L27:
	ldr	r3, [r4]
	cmp	r3, #13
	bne	.L31
.L40:
	ldr	r3, [r8]
	cmp	r3, #0
	blt	.L33
	mov	r2, #0
	ldr	r1, .L114+36
	ldr	r0, .L114+40
	ldr	r3, .L114+44
	mov	lr, pc
	bx	r3
.L33:
	mvn	r3, #0
	str	r3, [r8]
	b	.L34
.L107:
	ldr	r1, [r5, #60]
	ldr	r2, [r5]
	ldr	r0, [r5, #56]
	ldr	r3, [r5, #4]
	add	r2, r2, r1
	ldr	r1, [sp, #16]
	add	r3, r3, r0
	ldr	r0, [sp, #20]
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
	ldr	fp, .L114+48
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	ldr	r3, [r4]
	beq	.L9
	sub	r2, r3, #10
	cmp	r2, #1
	bhi	.L112
.L9:
	ldr	r2, .L114+52
	ldr	r1, [r2]
	cmp	r1, r6
	beq	.L113
	ldr	r1, .L114+56
	ldr	r2, [r1]
	cmp	r2, r6
	bne	.L15
	ldr	r2, [r7, #28]
	cmp	r2, #1
	moveq	r0, #0
	movne	r0, #1
	ldr	r2, [r7]
	addeq	r2, r2, #58
	addne	r2, r2, #45
	str	r2, [r4, #4]
	str	r0, [r4, #36]
	ldr	r2, [r7, #4]
	ldr	r0, [r4, #40]
	add	r2, r2, #19
	cmp	r0, #0
	str	r2, [r4, #8]
	movne	r2, #51
	strne	r2, [r1]
.L15:
	ldr	r2, .L114+32
	ldr	r1, [r4, #8]
	ldr	r0, [r2]
	ldr	r2, [r4, #4]
	sub	r1, r1, r0
	ldr	r0, [r9]
	cmp	r3, #13
	sub	r2, r2, r0
	str	r1, [r4, #16]
	str	r2, [r4, #12]
	bne	.L31
.L109:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L40
	ldr	r2, [r8]
	cmp	r2, #4
	bne	.L35
	b	.L34
.L21:
	ldr	r0, [r7, #60]
	cmp	r0, #0
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	beq	.L28
	ldr	r0, .L114+32
	add	r2, r2, #28
	ldr	r0, [r0]
	add	r1, r1, #4
	sub	r3, r2, r3
	str	r3, [r4, #12]
	sub	r3, r1, r0
	str	r1, [r4, #8]
	str	r2, [r4, #4]
	str	r3, [r4, #16]
	str	r0, [r4, #44]
	b	.L27
.L110:
	cmp	r3, #1
	bne	.L34
	ldr	r2, [r4, #40]
	cmp	r2, #0
	ldrne	r2, .L114+60
	strne	r3, [r2]
	b	.L34
.L28:
	ldr	lr, .L114+28
	add	ip, r1, r2, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	ldr	ip, [r4, #44]
	sub	r3, r2, r3
	sub	ip, r1, ip
	str	r3, [r4, #12]
	str	r0, [r4, #40]
	str	r2, [r4, #4]
	str	r1, [r4, #8]
	str	ip, [r4, #16]
	lsl	r3, r2, #10
	beq	.L29
	ldr	ip, [r4, #32]
	add	r2, r2, ip
	add	ip, r1, r2, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	lsl	r2, r2, #10
	beq	.L29
	ldr	ip, [r4, #28]
	add	r1, r1, ip
	add	r3, r3, r1
	lsl	r3, r3, #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	beq	.L29
	add	r2, r2, r1
	lsl	r2, r2, #1
	ldrh	r3, [lr, r2]
	cmp	r3, #0
	beq	.L29
	str	r0, [r4, #36]
	ldr	r3, [r4]
	b	.L19
.L113:
	ldr	r1, [r7, #28]
	cmp	r1, #1
	moveq	r0, #0
	movne	r0, #2
	ldr	r1, [r7]
	addeq	r1, r1, #10
	subne	r1, r1, #2
	str	r1, [r4, #4]
	str	r0, [r4, #36]
	ldr	r1, [r7, #4]
	ldr	r0, [r4, #40]
	add	r1, r1, #8
	cmp	r0, #0
	str	r1, [r4, #8]
	movne	r1, #50
	strne	r1, [r2]
	b	.L15
.L112:
	ldrh	r2, [r10]
	tst	r2, #256
	beq	.L9
	ldr	r2, .L114+24
	ldrh	r2, [r2]
	tst	r2, #256
	bne	.L9
	ldr	r2, [r5, #24]
	cmp	r2, #0
	bne	.L9
	ldr	r2, .L114+64
	ldrh	r2, [r2, #48]
	tst	r2, #512
	ldr	r2, .L114+4
	add	r1, r2, r6, lsl #6
	bne	.L10
	ldr	r2, [r4, #36]
	cmp	r2, #0
	bne	.L10
	mov	r2, #1
	ldr	r0, .L114+68
	str	r2, [r5, #24]
	str	r2, [r4, #40]
	str	r1, [r0]
	b	.L9
.L108:
	ldr	ip, [r4, #28]
	add	r0, r0, ip
	add	r3, r3, r0
	lsl	r3, r3, #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	beq	.L29
	add	r2, r2, r0
	lsl	r3, r2, #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	beq	.L29
	str	r1, [r4, #36]
	ldr	r3, [r4]
	b	.L19
.L111:
	ldr	r3, .L114+4
	mov	r2, r3
	mov	r1, r2
	mov	r5, #38
	mov	r6, #16
	mov	r7, #86
	mov	r9, #74
	mov	r0, r1
	stm	sp, {r5, r6, r7, r9}
	ldr	r4, .L114+48
	ldr	r3, [r3, #288]
	ldr	r2, [r2, #284]
	ldr	r1, [r1, #260]
	ldr	r0, [r0, #264]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L114+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r9}
	ldr	r3, [r3, #352]
	ldr	r2, [r2, #348]
	ldr	r1, [r1, #324]
	ldr	r0, [r0, #328]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L114+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r9}
	ldr	r3, [r3, #416]
	ldr	r2, [r2, #412]
	ldr	r1, [r1, #388]
	ldr	r0, [r0, #392]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L114+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r9}
	ldr	r3, [r3, #480]
	ldr	r2, [r2, #476]
	ldr	r1, [r1, #452]
	ldr	r0, [r0, #456]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L114+4
	mov	r2, r3
	mov	r1, r2
	mov	r0, r1
	stm	sp, {r5, r6, r7, r9}
	ldr	r3, [r3, #544]
	ldr	r2, [r2, #540]
	ldr	r1, [r1, #516]
	ldr	r0, [r0, #520]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r8]
	b	.L6
.L10:
	ldr	r2, [r5, #28]
	cmp	r2, #1
	bne	.L9
	ldr	r2, [r4, #36]
	cmp	r2, #1
	ldreq	r0, .L114+68
	streq	r2, [r5, #24]
	streq	r2, [r4, #40]
	streq	r1, [r0]
	b	.L9
.L115:
	.align	2
.L114:
	.word	goose
	.word	objects
	.word	voff
	.word	tasks
	.word	human
	.word	oldButtons
	.word	buttons
	.word	gardenCollisionBitmap
	.word	gooseHoff
	.word	28400
	.word	writing
	.word	playSoundB
	.word	collision
	.word	hatIndex
	.word	keyIndex
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
	ldr	r9, .L143
	ldr	r8, .L143+4
	ldr	r4, .L143+8
	ldr	r3, .L143+12
	ldr	r0, [r9]
	mov	r2, r8
	mov	r1, r4
	mov	r7, #512
	ldr	r6, [r3]
	ldr	lr, .L143+16
	sub	sp, sp, #20
	add	r5, r0, #1
	add	ip, r8, #896
	b	.L121
.L141:
	cmp	r5, r3
	beq	.L117
.L118:
	strh	r7, [r1, #16]	@ movhi
.L120:
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
	beq	.L140
.L121:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	add	r10, r3, #255
	movlt	r3, r10
	asr	r3, r3, #8
	add	r3, r3, #28
	cmp	r0, r3
	bne	.L141
.L117:
	cmp	r6, #0
	beq	.L119
	ldr	r3, [r2]
	cmp	r3, #11
	beq	.L118
.L119:
	ldrb	r3, [r2, #12]	@ zero_extendqisi2
	ldr	r10, [r2, #56]
	orr	r3, r3, r10
	strh	r3, [r1, #16]	@ movhi
	b	.L120
.L140:
	ldr	r3, .L143+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L122
	ldr	r0, [r8, #72]
	cmp	r0, #0
	add	r3, r0, #255
	movge	r3, r0
	ldr	r2, [r9]
	asr	r3, r3, #8
	add	r3, r3, #28
	cmp	r2, r3
	beq	.L123
	add	r2, r2, #1
	cmp	r2, r3
	beq	.L123
.L122:
	mov	r3, #512
	strh	r3, [r4, #128]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L123:
	ldr	lr, .L143+24
	ldr	r2, [lr]
	ldr	r6, .L143+28
	add	r2, r2, #1
	smull	r3, ip, r6, r2
	ldr	r7, .L143+32
	ldr	r5, .L143+36
	ldr	r3, .L143+40
	asr	r6, r2, #31
	ldr	r1, [r8, #68]
	rsb	r6, r6, ip, asr #1
	ldr	ip, [r7]
	ldr	r8, [r5]
	ldr	r3, [r3]
	sub	r1, r1, #12
	sub	r0, r0, #12
	add	r6, r6, r6, lsl #1
	cmp	ip, #4
	str	r2, [lr]
	sub	r6, r2, r6, lsl #2
	sub	r8, r1, r8
	sub	r5, r0, r3
	beq	.L142
.L125:
	lsl	r3, r5, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	cmp	r6, #5
	strh	r3, [r4, #130]	@ movhi
	ldrle	r3, .L143+44
	ldrgt	r3, .L143+48
	and	r8, r8, #255
	strh	r8, [r4, #128]	@ movhi
	strh	r3, [r4, #132]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L142:
	mov	r3, #32
	mov	ip, #64
	ldr	r2, .L143+52
	ldr	lr, [r2]
	ldr	r2, [r2, #4]
	ldr	r9, .L143+56
	stm	sp, {r2, lr}
	str	r3, [sp, #8]
	mov	r2, r3
	str	ip, [sp, #12]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r3, #3
	strne	r3, [r7]
	b	.L125
.L144:
	.align	2
.L143:
	.word	sb
	.word	objects
	.word	shadowOAM
	.word	gateOpen
	.word	511
	.word	sprinklerOn
	.word	sprinklerTimer
	.word	715827883
	.word	tasks
	.word	voff
	.word	gooseHoff
	.word	4504
	.word	4508
	.word	human
	.word	collision
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
	.comm	keyIndex,4,4
	.comm	hatIndex,4,4
	.comm	sprinklerTimer,4,4
	.comm	sprinklerOn,4,4
	.comm	shadowCount,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
