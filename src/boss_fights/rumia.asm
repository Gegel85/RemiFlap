animateRumia::
	bit 5, a
	jr z, .flash3

	and 3
	jr nz, .hideMist
	jp displayBoss

.flash3::
	bit 4, a
	jr nz, .flash2

	and 3
	jr z, .hideMist
	jp displayBoss

.flash2::
	and 1
	jp z, displayBoss
.hideMist::
	ld hl, oamSrc + $18
	ld b, 9
	xor a
.loop:
	ld [hli], a
	inc hl
	inc hl
	inc hl
	dec b
	jr nz, .loop
	ret

rumiaEnteringScene::
	ld hl, bossAnimationRegisters
	bit 7, [hl]
	jp z, stageAnimationRumia
	xor a
	ld [bossAttack], a
	ld [hl], a
	ret

rumiaAttack1::
	xor a
	inc hl
	or [hl]
	jp z, .startMistCharge
	dec a
	jp z, .chargeMist
	dec a
	jr z, .startWandering
	dec a
	jr z, .wander
	dec a
	jr z, .rush
	dec a
	jr z, .prepareComeBack
	dec a
	jr z, .comeBack

	ld hl, bossAnimationRegisters
	ld a, [hl]
	bit 6, a
	jp nz, bossFightRumia.endOfAttack

	inc [hl]
	jp animateRumia

.startWandering::
	call random
	and %11111110
	cp $B0
	jr nc, .fine
	cp 45
	jr nc, .startWandering
.fine::
	ld [rumiaTotalMoveY], a
	jr .endAnimation

.wander::
	ld hl, rumiaTotalMoveY
	ld a, [hl]
	bit 7, a
	jr z, .add
	inc [hl]
	inc [hl]
	push af
	ld de, $FE00
	call moveBoss
	pop af
	ret nz
	jr .endAnimation
.add::
	dec [hl]
	dec [hl]
	push af
	ld de, $0200
	call moveBoss
	pop af
	ret nz
	jr .endAnimation

.rush::
	ld de, $00FC
	call moveBoss
	ld a, [bossPos + 1]
	ld b, a
	cp $20
	jr nc, .noCollision
	cp $08
	jr c, .noCollision

.noCollision::
	ld a, b
	bit 7, a
	ret z
	cp $D0
	ret nc
	jr .endAnimation
.prepareComeBack::
	ld a, $4B
	ld [bossPos], a
	ld a, 160
	ld [bossPos + 1], a
	call displayBoss
	jr .endAnimation
.comeBack::
	ld de, $00FE
	call moveBoss
	ld a, [bossPos + 1]
	cp 100
	ret nz
	jr .endAnimation
.chargeMist::
	ld hl, bossAnimationRegisters
	ld a, [hl]
	or a
	jr z, .endAnimation

	dec [hl]
	jp animateRumia
.endAnimation::
	xor a
	ld [bossAnimationRegisters], a
	ld hl, bossAttackAnimCounter
	jr .nextAnimaton
.startMistCharge::
	ld a, $40
	ld [bossAnimationRegisters], a
.nextAnimaton::
	inc [hl]
	ret

rumiaAttack2::
	jp bossFightRumia.endOfAttack

bossFightRumia::
	ld hl, bossAttackCounter
	xor a
	or [hl]
	jr z, .ready

	dec [hl]
	ret

.ready::
	inc hl
	or [hl]
	jr nz, .alreadyAttacking
	call random
	and 1
	inc a
	ld b, a
	ld [hld], a
	xor a
	ld [hli], a
	ld a, b

.alreadyAttacking::
	cp $FF
	jp z, rumiaEnteringScene
	bit 0, a
	jp nz, rumiaAttack1

.endOfAttack::
	call random
	and 15
	inc a
	ld hl, bossAttackCounter
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ret