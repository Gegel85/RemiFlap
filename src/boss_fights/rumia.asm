animateRumia::
	or a
	jr nz, .noPlay
	push hl
	ld hl, takeMistSfx
	call playSfx
	pop hl
.noPlay::

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
	ld hl, oamSrc + $1C
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
	jp z, .comeBack

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
	jp endBossAnimation

.wander::
	ld hl, rumiaTotalMoveY
	ld a, [hl]
	bit 7, a
	jr z, .add
	inc [hl]
	inc [hl]
	push af
	ld de, $FE00
	ld b, $C
	call moveBoss
	pop af
	ret nz
	jp endBossAnimation
.add::
	dec [hl]
	dec [hl]
	push af
	ld de, $0200
	ld b, $C
	call moveBoss
	pop af
	ret nz
	jp endBossAnimation

.rush::
	ld de, $00FC
	ld b, $C
	call moveBoss
	ld a, [bossPos + 1]
	ld b, a
	cp $20
	jr nc, .noCollision
	cp $08
	jr c, .noCollision
	ld a, [bossPos]
	add $18
	ld b, a
	ld a, [playerPos]
	cp b
	jr nc, .noCollision
	add $18
	cp b
	jp nc, gameOver

.noCollision::
	ld a, b
	bit 7, a
	ret z
	cp $D0
	ret nc
	jp endBossAnimation
.prepareComeBack::
	ld a, $4B
	ld [bossPos], a
	ld a, 160
	ld [bossPos + 1], a
	call displayBoss
	jp endBossAnimation
.comeBack::
	ld de, $00FE
	ld b, $C
	call moveBoss
	ld a, [bossPos + 1]
	cp 120
	ret nz
	jp endBossAnimation
.chargeMist::
	ld hl, bossAnimationRegisters
	ld a, [hl]
	or a
	jp z, endBossAnimation

	dec [hl]
	jp animateRumia
.startMistCharge::
	push hl
	ld hl, putMistSfx
	call playSfx
	ld a, $40
	pop hl
	ld [bossAnimationRegisters], a
	jp nextBossAnimation

projectilesAngles::
	dw $FF00, $0101
	dw $FF01, $0101
	dw $FFFF, $0101
	dw $FF00, $0101
	dw $FE00, $0101
	dw $FF01, $0102
	dw $FFFF, $0102
	dw $FE00, $0201

putMistSfx::
	db 3		      ; Channel (0-3)
	db $20		      ; Sound duration in frames
	db $3F, $5A, $50, $C0 ; Sound data copied in channel registers
takeMistSfx::
	db 3		      ; Channel (0-3)
	db $20		      ; Sound duration in frames
	db $3F, $F3, $50, $80 ; Sound data copied in channel registers
shootSfx::
	db 3		      ; Channel (0-3)
	db $20		      ; Sound duration in frames
	db $38, $F1, $78, $80 ; Sound data copied in channel registers

rumiaAttack2::
	xor a
	inc hl
	or [hl]
	jp z, .prepareProjectileSpawn
	dec a
	jp z, .throwProjectiles

	xor a
	ld de, oamSrc + $80
	ld bc, $20
	call fillMemory
	jp bossFightRumia.endOfAttack
.throwProjectiles::
	ld hl, nbOfProjectilesToShoot
	xor a
	or [hl]
	jr nz, .check

	ld a, [nbOfProjectiles]
	or a
	jr nz, .updateProjectiles
	jp endBossAnimation

.check::
	inc hl
	bit 3, [hl]
	jr nz, .updateProjectiles

	inc hl
	dec [hl]
	jr nz, .updateProjectiles

.addNewProjectile::
	ld a, [nbOfProjectilesToShoot]
	dec a
	ld [nbOfProjectilesToShoot], a

	call random
	and $7
	set 3, a
	ld [hld], a
	ld a, [hl]
	inc [hl]
	inc hl
	inc hl
	sla a
	sla a
	sla a
	ld b, 0
	ld c, a
	add hl, bc

	call random
	and %00011100
	push hl
	ld c, a
	ld hl, projectilesAngles
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ld a, [bc]
	inc bc
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hli], a
	ld a, [bc]
	inc bc
	ld d, a
	ld [hli], a
	ld a, [bc]
	inc bc
	ld e, a
	ld [hli], a
	ld a, d
	ld [hli], a
	ld a, e
	ld [hli], a
	ld a, [bossPos]
	add $C
	ld [hli], a
	ld a, [bossPos + 1]
	add $C
	ld [hli], a

	ld hl, shootSfx
	call playSfx

.updateProjectiles::
	ld a, [nbOfProjectiles]
	or a
	ret z
	ld d, a
	ld hl, projectiles
.updateLoop::
	; SPEED
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a

	; COUNTER
	dec [hl]
	inc hl
	jr z, .noDecY
	dec b
	jr .checkX
.noDecY::
	inc hl
	ld a, [hld]
	dec hl
	ld [hli], a
.checkX::
	dec [hl]
	inc hl
	jr z, .noDecX
	dec c
	jr .applySpeed
.noDecX::
	inc hl
	ld a, [hld]
	dec hl
	ld [hli], a
.applySpeed::
	inc hl
	inc hl
	ld a, b
	add [hl]
	ld b, a
	ld [hli], a
	ld a, c
	add [hl]
	ld c, a
	ld [hli], a

	ld a, 144
	cp b
	jr c, .delete
	ld a, 160
	cp c
	jr nc, .noDelete

.delete::
	ld a, [nbOfProjectiles]
	dec a
	push af
	ld [nbOfProjectiles], a

	ld a, d
	dec a
	push de
	sla a
	sla a
	sla a
	ld b, 0
	ld c, a
	push hl
	ld de, -8
	add hl, de
	ld d, h
	ld e, l
	pop hl
	push de
	call copyMemory
	pop hl
	pop de
	pop af
	ret z

.noDelete::
	ld a, $1C
	cp c
	jr nc, .noCollision
	ld a, $24
	cp c
	jr c, .noCollision
	ld a, [playerPos]
	sub b
	bit 7, a
	jr .pos
	cpl
	inc a
.pos::
	cp 4
	jr nc, .noCollision
	reg gotHit, 1

.noCollision::
	dec d
	jr nz, .updateLoop

.drawProjectiles::
	xor a
	ld de, oamSrc + $80
	ld bc, $20
	call fillMemory
	ld a, [nbOfProjectiles]
	ld b, a
	ld hl, oamSrc + $80
	ld de, projectiles
.displayLoop::
	; SPEED
	inc de
	inc de
	; COUNTER
	inc de
	inc de
	; MAX COUNTER
	inc de
	inc de
	; POS
	ld a, [de]
	inc de
	add $C
	ld [hli], a

	ld a, [de]
	inc de
	add 4
	ld [hli], a

	ld a, $27
	ld [hli], a
	ld a, 6
	ld [hli], a
	dec b
	jr nz, .displayLoop
	ld a, [gotHit]
	or a
	ld a, 0
	ld [gotHit], a
	jp nz, gameOver
	ret

.prepareProjectileSpawn::
	call random
	and $0F
	inc a
	ld [nbOfProjectilesToShoot], a
	reset nbOfProjectiles
	call random
	and $7
	inc a
	ld [shootCounter], a
	jp endBossAnimation

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
	dec a
	jp z, rumiaAttack1
	dec a
	jp z, rumiaAttack2

.endOfAttack::
	call random
	and 15
	inc a
	ld hl, bossAttackCounter
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [nbOfProjectiles], a
	ret