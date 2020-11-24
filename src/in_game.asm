game::
	di
	call waitVBLANK
	reset lcdCtrl

	reg VRAMBankSelect, 1
	startGPDMA background, vramStart, $800
	startGPDMA background + $800, vramStart + $800, $800

	reset VRAMBankSelect
	startGPDMA background + $1000, vramStart, backgroundMap - background - $1000
	startGPDMA remiliaSprite, vramStart + backgroundMap - background - $1000, $200

	ld hl, cgbBgPalIndex
	ld a, $80
	ld [hli], a
	ld de, backgroundPal
	ld b, $18
.bgPalLoop::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .bgPalLoop

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
	di
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

	reg VBLANKRegister, 1

	ld b, $30
	push bc
	reg lcdCtrl, %10010011
	ei
gameLoop::
	reset interruptFlag
	ld hl, VBLANKRegister
.loop::
	halt
	bit 7, [hl]
	jr z, .loop
	res 7, [hl]

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
	ld a, [fireColumnHoleSize]
	ld c, a
.randGen::
	call random
	and $F
	sub c
	cp 18
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
	push bc
	ld b, a
	ld a, [fireColumnHoleSize]
	sla a
	sla a
	sla a
	add b
	pop bc
	cp c
	jp c, gameOver
.noCollision::
	inc hl
	dec b
	jr nz, .fireColumnUpdateLoop
	call drawScore
	jp gameLoop
