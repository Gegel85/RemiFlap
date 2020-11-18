game::
	call waitVBLANK
	reset lcdCtrl

	reg VRAMBankSelect, 1
	ld hl, background
	ld bc, $1000
	ld de, vramStart
	call copyMemory

	reset VRAMBankSelect
	ld bc, backgroundMap - background - $1000
	ld de, vramStart
	call copyMemory

	ld hl, remiliaSprite
	ld bc, $200
	call copyMemory

	ld hl, cgbBgPalIndex
	ld a, $80
	ld [hli], a
	ld de, backgroundPal
	ld b, $10
.bgPalLoop::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .bgPalLoop

	ld de, fireCustomPal
	ld b, $8
.bgPalLoop2::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .bgPalLoop2

	ld hl, cgbObjPalIndex
	ld a, $80
	ld [hli], a
	ld de, remiliaPal
	ld b, $18
.objPalLoop::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .objPalLoop

	ld de, firePal
	ld b, $8
.objPalLoop2::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .objPalLoop2

initGame::
	call waitVBLANK
	reset lcdCtrl
	reg playerPos, $55
	reset playerSpeed
	ld [bgScrollX], a

	call copyBgTilemap

	ld hl, fireColumnNextColumnAddr
	ld a, vramBgMirror >> 8
	ld [hli], a
	xor a
	ld [hli], a
	ld a, 6 * 8
	ld [hl], a

	ld de, fireColumnsIndex
	ld bc, 9
	xor a
	call fillMemory

	ld de, oamSrc + 4 * 8
	ld bc, 4 * 4
	call fillMemory

	ld hl, score
	ld [hli], a
	ld [hli], a

	ld b, $30
	push bc
	reg lcdCtrl, %10010011
gameLoop::
	reset interruptFlag
	halt

.copyBuffer::
	reset WRAMBankSelect
	ld [VRAMBankSelect], a
	ld hl, newDmaSrcH
	ld [hl], vramBgMirror >> 8
	inc l
	ld [hl], vramBgMirror & $FF
	inc l
	ld [hl], vramBgStart >> 8
	inc l
	ld [hl], vramBgStart & $FF
	inc l
	ld [hl], $24
	reg WRAMBankSelect, 3
	ld [VRAMBankSelect], a
	ld hl, newDmaSrcH
	ld [hl], vramBgMirror >> 8
	inc l
	ld [hl], vramBgMirror & $FF
	inc l
	ld [hl], vramBgStart >> 8
	inc l
	ld [hl], vramBgStart & $FF
	inc l
	ld [hl], $24
	reset WRAMBankSelect
	ld [VRAMBankSelect], a

.updateScroll::
	ld hl, bgScrollX
	inc [hl]

.updatePlayer::
	ld hl, playerSpeed
	ld a, [hl]
	pop bc
	dec b
	push bc
	jr nz, .noInc

	pop bc
	ld b, GRAVITY_COUNTER
	push bc
	inc [hl]
.noInc::
	dec l
	add [hl]
	ld [hl], a

.playerControl::
	call getKeysFiltered
	bit A_BIT, a
	jr z, .jump
	bit UP_BIT, a
	jr nz, .noJump
.jump::
	call random
	ld a, [playerSpeed]
	ld b, a
	srl a
	sub SPEED_FORCE
	bit 7, b
	jr z, .ok
	set 7, a
.ok::
	ld [playerSpeed], a
	pop bc
	ld b, GRAVITY_COUNTER
	push bc
.noJump::
	call showPlayer

	ld hl, fireGenerationCounter
	ld a, [hl]
	dec a
	ld [hl], a
	jr nz, .noFireGeneration
	ld a, TIME_SPAWN_TIMING * 8
	ld [hld], a

	ld a, [hl]
	ld d, a
	and $E0
	ld e, a
	ld a, d
	add a, TIME_SPAWN_TIMING
	and $1F
	ld [hld], a
	ld h, [hl]
	ld l, d
.randGen::
	call random
	and $F
	cp 18 - FIRE_COLUMS_HOLE_SIZE
	jr nc, .randGen
	ld c, a
	ld de, fireColumns
	ld a, [fireColumnsIndex]
	inc a
	and 3
	ld [fireColumnsIndex], a
	sla a
	add e
	ld e, a
	ld a, d
	adc 0
	ld d, a
	ld a, $C0
	ld [de], a
	inc de
	ld a, c
	sla a
	sla a
	sla a
	ld [de], a
	call drawFireColumn

.noFireGeneration::
	ld a, [playerPos]
	cp 144
	jp nc, gameOver

	ld c, a
	ld b, 4
	ld hl, fireColumns
.fireColumnUpdateLoop::
	dec [hl]
	jr nz, .noScoreUpdate
	push hl
	ld hl, score
	ld a, [hl]
	add 1
	daa
	ld [hli], a
	ld a, [hl]
	adc 0
	daa
	ld [hl], a
	pop hl
.noScoreUpdate::
	ld a, $F
	cp [hl]
	inc hl
	jr c, .noCollision
	ld a, [hl]
	cp c
	jr nc, gameOver
	add FIRE_COLUMS_HOLE_SIZE * 8
	cp c
	jp c, gameOver
.noCollision::
	inc hl
	dec b
	jr nz, .fireColumnUpdateLoop
	call drawScore
	jp gameLoop

fireCustomPal::
	;dw $3DEF, $018F, $00CF, $000F
	dw $1CE7, $00C7, $0067, $0007