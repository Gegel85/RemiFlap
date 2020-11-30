flandreEnteringScene::
	ld hl, bossAttackAnimCounter
	xor a
	or [hl]
	jr nz, .noSpriteCopy
	inc [hl]
	startHDMA flandre, $8200, $100
.noSpriteCopy::
	ld de, $00FE
	ld b, $C
	call moveBoss
	ld a, [bossPos + 1]
	cp 120
	ret nz
	jp bossFightFlandre.endOfAttack

flanLaeveteinnUp::
	db $10, $08, $20, $04
	db $10, $10, $20, $24
	db $18, $08, $21, $04
	db $18, $10, $21, $24
	db $20, $08, $22, $04
	db $20, $10, $22, $24
	db $15, $08, $23, $05
	db $15, $10, $23, $25
	db $18, $07, $24, $07
	db $18, $11, $24, $27
	db $0F, $08, $25, $04
	db $1C, $0C, $28, $46
	db $24, $0C, $27, $46
	db $2C, $0C, $27, $46
	db $34, $0C, $27, $46
	db $3C, $0C, $27, $46
	db $44, $0C, $27, $46
	db $4C, $0C, $27, $46
	db $54, $0C, $27, $46
	db $5C, $0C, $27, $46
	db $64, $0C, $27, $46
	db $6C, $0C, $27, $46
	db $74, $0C, $27, $46
	db $7C, $0C, $26, $46
flanLaeveteinnDown::
	db $10, $08, $20, $04
	db $10, $10, $20, $24
	db $18, $08, $21, $04
	db $18, $10, $21, $24
	db $20, $08, $22, $04
	db $20, $10, $22, $24
	db $17, $08, $23, $05
	db $17, $10, $23, $25
	db $1B, $07, $24, $07
	db $1B, $11, $24, $27
	db $14, $0C, $27, $06
	db $0C, $0C, $27, $06
	db $04, $0C, $27, $06
	db $FC, $0C, $27, $06
	db $F4, $0C, $27, $06
	db $EC, $0C, $27, $06
	db $E4, $0C, $27, $06
	db $DC, $0C, $27, $06
	db $D4, $0C, $27, $06
	db $CC, $0C, $27, $06
	db $C4, $0C, $27, $06
	db $BC, $0C, $27, $06
	db $B4, $0C, $26, $06

flandreAttackLaeveteinnUp::
	ld hl, bossAttackAnimCounter
	xor a
	or [hl]
	jp z, .initFireBladeAnim
	dec a
	jp z, .bladeFireAnimation
	dec a
	jp z, .moveUp
	dec a
	jp z, .moveLeft
	dec a
	jr z, .prepareComeBack
	dec a
	jr z, .prepareComeBack2
	dec a
	jr z, .comeBack
	dec a
	jr z, .animateReturn

	startHDMA flandre, $8200, $100
	call displayBoss
	jp bossFightFlandre.endOfAttack

.comeBack::
	ld de, $01FE
	ld b, $C
	call moveBoss
	ld a, [bossPos + 1]
	cp 120
	ret nz

	ld hl, bossAttackAnimCounter
	inc [hl]
	ret

.animateReturn::
	ld hl, bossAnimationRegisters
	ld a, [hl]
	bit 0, a
	jp nz, stageAnimationFlandre.delay

	dec [hl]
	dec [hl]
	dec [hl]
	dec [hl]
	ld a, [hl]
	bit 7, a
	jp z, stageAnimationFlandre.updateSprite

	ld hl, bossAttackAnimCounter
	inc [hl]
	ret

.prepareComeBack2::
	inc [hl]
	startHDMA biggestAltLaevateinns, $8270, 2 * $10
	ret

.prepareComeBack::
	inc [hl]
	reg bossAnimationRegisters, 12
	startHDMA altFlanPos, $8220, 5 * $10
	ld hl, flanPos2
	ld de, oamSrc + $3C
	ld a, [bossPos]
	ld b, a
	ld a, [bossPos + 1]
	ld c, a

	ld a, [hli]
	add b
	ld [de], a
	inc de

	ld a, [hli]
	add c
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de

	ld a, [hli]
	ld a, 6
	ld [de], a
	inc de

	ld a, [hli]
	add b
	ld [de], a
	inc de

	ld a, [hli]
	add c
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de

	ld a, [hli]
	ld a, 6
	ld [de], a
	ret

.moveUp::
	ld b, 24
	ld de, $FF00
	call moveBoss
	ld a, [bossPos]
	or a
	ret nz

	ld hl, bossAttackAnimCounter
	inc [hl]
	ret
.moveLeft::
	ld b, 24
	ld de, $00FB
	call moveBoss
	ld a, [bossPos + 1]
	cp $1C
	jr nc, .noCollision
	cp $14
	jr c, .noCollision
	ld a, [playerPos]
	cp $73
	jp c, gameOver
.noCollision::
	ld a, [bossPos + 1]
	cp 160
	ret c
	cp $E0
	ret nc
	ld hl, bossAttackAnimCounter
	inc [hl]
	ld a, 40
	ld [bossPos], a
	ld a, 160
	ld [bossPos + 1], a
	startHDMA flandre, $8200, $100
	jp displayBoss

.initFireBladeAnim::
	inc [hl]
	reg bossAnimationRegisters, 2

.bladeFireAnimation::
	ld a, [bossAnimationRegisters]
	sub $C
	jp nz, stageAnimationFlandre

	inc [hl]
	startHDMA flanLookDown, $8200, $100
	ld hl, flanLaeveteinnUp
	ld de, oamSrc + $1C
	ld b, 24
.loop::
	ld a, [bossPos]
	add [hl]
	inc hl
	ld [de], a
	inc de

	ld a, [bossPos + 1]
	add [hl]
	inc hl
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loop
	ret



flandreAttackLaeveteinnDown::
	ld hl, bossAttackAnimCounter
	xor a
	or [hl]
	jp z, .initFireBladeAnim
	dec a
	jp z, .bladeFireAnimation
	dec a
	jp z, .moveDown
	dec a
	jp z, .moveLeft
	dec a
	jr z, .prepareComeBack
	dec a
	jr z, .prepareComeBack2
	dec a
	jr z, .comeBack
	dec a
	jr z, .animateReturn

	startHDMA flandre, $8200, $100
	call displayBoss
	jp bossFightFlandre.endOfAttack

.comeBack::
	ld de, $01FE
	ld b, $C
	call moveBoss
	ld a, [bossPos + 1]
	cp 120
	ret nz

	ld hl, bossAttackAnimCounter
	inc [hl]
	ret

.animateReturn::
	ld hl, bossAnimationRegisters
	ld a, [hl]
	bit 0, a
	jp nz, stageAnimationFlandre.delay

	dec [hl]
	dec [hl]
	dec [hl]
	dec [hl]
	ld a, [hl]
	bit 7, a
	jp z, stageAnimationFlandre.updateSprite

	ld hl, bossAttackAnimCounter
	inc [hl]
	ret

.prepareComeBack2::
	inc [hl]
	startHDMA biggestAltLaevateinns, $8270, 2 * $10
	ret

.prepareComeBack::
	inc [hl]
	reg bossAnimationRegisters, 12
	startHDMA altFlanPos, $8220, 5 * $10
	ld hl, flanPos2
	ld de, oamSrc + $3C
	ld a, [bossPos]
	ld b, a
	ld a, [bossPos + 1]
	ld c, a

	ld a, [hli]
	add b
	ld [de], a
	inc de

	ld a, [hli]
	add c
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de

	ld a, [hli]
	ld a, 6
	ld [de], a
	inc de

	ld a, [hli]
	add b
	ld [de], a
	inc de

	ld a, [hli]
	add c
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de

	ld a, [hli]
	ld a, 6
	ld [de], a
	ret

.moveDown::
	ld b, 23
	ld de, $0100
	call moveBoss
	ld a, [bossPos]
	cp 144 - 24
	ret nz

	ld hl, bossAttackAnimCounter
	inc [hl]
	ret
.moveLeft::
	ld b, 23
	ld de, $00FB
	call moveBoss
	ld a, [bossPos + 1]
	cp $1C
	jr nc, .noCollision
	cp $14
	jr c, .noCollision
	ld a, [playerPos]
	cp $20
	jp nc, gameOver
.noCollision::
	ld a, [bossPos + 1]
	cp 160
	ret c
	cp $E0
	ret nc
	ld hl, bossAttackAnimCounter
	inc [hl]
	ld a, 40
	ld [bossPos], a
	ld a, 160
	ld [bossPos + 1], a
	startHDMA flandre, $8200, $100
	jp displayBoss

.initFireBladeAnim::
	inc [hl]
	reg bossAnimationRegisters, 2

.bladeFireAnimation::
	ld a, [bossAnimationRegisters]
	sub $C
	jp nz, stageAnimationFlandre

	inc [hl]
	startHDMA flanLookUp, $8200, $100
	ld hl, flanLaeveteinnDown
	ld de, oamSrc + $1C
	ld b, 23
.loop::
	ld a, [bossPos]
	add [hl]
	inc hl
	ld [de], a
	inc de

	ld a, [bossPos + 1]
	add [hl]
	inc hl
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de

	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loop
	ret

flandreSpriteTable::
	db $10, $08, $20, $04
	db $10, $10, $21, $04
	db $18, $08, $22, $04
	db $18, $10, $23, $04
	db $20, $08, $24, $04
	db $20, $10, $25, $04
	db $18, $0E, $26, $05
	db $1C, $16, $29, $07
	db $13, $08, $27, $07
	db $1B, $08, $28, $07

flandreProjectilesTable::
	dw $0101
	dw $FFFF
	dw $FF01
	dw $01FF
	dw $0200
	dw $FE00
	dw $0002
	dw $00FE

flandreAttackFourOfAKind::
	ld hl, bossAttackAnimCounter
	xor a
	or [hl]
	jr z, .spawnClones
	dec a
	jp z, .moveClones
	dec a
	jr z, .spawnProjectiles
	dec a
	jp z, .checkProjectiles
	dec a
	jr z, .moveClonesBack

	xor a
	ld de, oamSrc + $1C
	ld bc, $48
	call fillMemory
	call displayBoss
	jp bossFightFlandre.endOfAttack
.checkProjectiles::
	ld a, [nbOfProjectiles]
	or a
	jp nz, .updateProjectiles
	inc [hl]
	jp .updateProjectiles
.spawnProjectiles::
	inc [hl]
	ld de, bossPos
	ld hl, nbOfProjectiles
	ld a, 32
	ld [hli], a
	inc hl
	call .spawnProjectilesBatch
	ld de, flandreClones
	call .spawnProjectilesBatch
	ld de, flandreClones + 2
	call .spawnProjectilesBatch
	ld de, flandreClones + 4
.spawnProjectilesBatch::
	reg $FFF0, 8
	ld bc, flandreProjectilesTable
.spawnProjectilesLoop::
	; SPEED (2)
	ld a, [bc]
	inc bc
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hli], a
	; COUNTER (2)
	ld a, 1
	ld [hli], a
	ld [hli], a
	; MAX COUNTER (2)
	ld [hli], a
	ld [hli], a
	; POS (2)
	ld a, [de]
	inc de
	add $10
	ld [hli], a
	ld a, [de]
	dec de
	add $8
	ld [hli], a
	ld a, [$FFF0]
	dec a
	ret z
	ld [$FFF0], a
	jr .spawnProjectilesLoop
.spawnClones::
	inc [hl]
	ld a, [bossPos]
	ld b, a
	ld a, [bossPos + 1]
	ld c, a
	ld hl, flandreClones
	ld d, 3
.spawnLoop::
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	dec d
	jr nz, .spawnLoop
	jp .displayElements
.moveClonesBack::
	ld hl, bossAnimationRegisters
	inc [hl]
	ld a, $18
	cp [hl]
	jr nz, .noEndBack
	xor a
	ld [hl], a
	ld hl, bossAttackAnimCounter
	inc [hl]
	ret
.noEndBack::
	ld hl, bossPos
	dec [hl]
	ld hl, flandreClones

	inc [hl]
	inc hl
	inc hl

	inc [hl]
	inc [hl]
	inc hl
	inc [hl]
	inc hl

	dec [hl]
	dec [hl]
	inc hl
	inc [hl]
	inc hl
	jp .displayElements
.moveClones::
	ld hl, bossAnimationRegisters
	inc [hl]
	ld a, $18
	cp [hl]
	jr nz, .noEnd
	xor a
	ld [hl], a
	ld hl, bossAttackAnimCounter
	inc [hl]
	ret
.noEnd::
	ld hl, bossPos
	inc [hl]
	ld hl, flandreClones

	dec [hl]
	inc hl
	inc hl

	dec [hl]
	dec [hl]
	inc hl
	dec [hl]
	inc hl

	inc [hl]
	inc [hl]
	inc hl
	dec [hl]
	inc hl
	jr .displayElements

.updateProjectiles::
	ld a, [nbOfProjectiles]
	or a
	jr z, .displayElements
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
.displayElements::
	ld hl, displayRegister
	ld a, [hl]
	xor 1
	ld [hl], a
	bit 0, a
	jr z, .displayFlandreAndClone1

.displayClone2AndClone3::
	ld hl, oamSrc + $1C
	ld bc, flandreClones + 2
	call .displaySingleBoss
	ld bc, flandreClones + 4
	call .displaySingleBoss
	jr .displayProjectiles
.displayFlandreAndClone1::
	ld hl, oamSrc + $1C
	ld bc, flandreClones
	call .displaySingleBoss
	ld bc, bossPos
	call .displaySingleBoss
.displayProjectiles::
	xor a
	ld de, oamSrc + $64
	ld bc, $3C
	call fillMemory
	ld a, [nbOfProjectiles]
	ld b, a
	or a
	ret z
	ld hl, oamSrc + $64
	ld de, projectiles
	ld a, [displayRegister]
	bit 0, a
	jr nz, .display
	ld de, projectiles + $78
	ld a, b
	sub $F
	ld b, a
	ret c
	ret z
.display::
	ld a, $F
	cp b
	jr nc, .displayLoop
	ld b, $F
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

	ld a, $28
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

.displaySingleBoss::
	reg $FFF0, 9
	ld de, bossesSprites + $40
.loop::
	push bc
	ld a, [bc]
	inc bc
	push bc
	ld b, a
	ld a, [de]
	inc de
	add b
	ld [hli], a
	pop bc

	ld a, [bc]
	inc bc
	ld b, a
	ld a, [de]
	inc de
	add b
	ld [hli], a

	ld a, [de]
	inc de
	ld [hli], a

	ld a, [de]
	inc de
	ld [hli], a

	ld a, [$FFF0]
	dec a
	pop bc
	ret z
	ld [$FFF0], a
	jr .loop


bossFightFlandre::
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
	and 3
	cp 3
	jr nz, .ok
	call random
	and 1
.ok::
	inc a
	ld b, a
	ld [hld], a
	xor a
	ld [hli], a
	ld a, b

.alreadyAttacking::
	cp $FF
	jp z, flandreEnteringScene
	dec a
	jp z, flandreAttackLaeveteinnUp
	dec a
	jp z, flandreAttackLaeveteinnDown
	dec a
	jp z, flandreAttackFourOfAKind

.endOfAttack::
	call random
	and 31
	inc a
	ld hl, bossAttackCounter
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ret