flandreEnteringScene::
	ld hl, bossAttackAnimCounter
	xor a
	or [hl]
	jr nz, .noSpriteCopy
	inc [hl]
	startHDMA flandre, $8200, $100
.noSpriteCopy::
	ld de, $01FE
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


flandreAttackFourOfAKind::
	startHDMA flandre, $8200, $100
	jp bossFightFlandre.endOfAttack


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