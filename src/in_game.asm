game::
	di
	call waitVBLANK
	reset lcdCtrl

	reg bossHpDrainCounterMax, 2
	reg VRAMBankSelect, 1
	inc a
	ld [ROMBankSelect], a
	startGPDMA background, VRAMStart + $1000, $800
	startGPDMA background + $800, VRAMStart + $800, $800

	reset VRAMBankSelect
	startGPDMA background + $1000, VRAMStart + $1000, mainMenuBg - background - $1000

	reset ROMBankSelect
	startGPDMA remiliaSprite, VRAMStart, $200

	reset currentStage

	ld a, [fireColumnHoleSize]
	dec a
	ld [bossHpDrainCounterMax], a

	ld de, VRAMStart + "A" * $10
	ld hl, font
	ld a, 3
	ld bc, 8 * 26
	call uncompress

	ld de, VRAMStart + "0" * $10
	ld bc, 8 * 10
	call uncompress

	ld de, VRAMStart + "a" * $10
	ld bc, 8 * 30
	call uncompress

	ld hl, cgbBgPalIndex
	ld a, $80
	ld [hli], a
	ld de, backgroundPal
	ld b, $8
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

initGame::
	di
	call waitVBLANK
	reset lcdCtrl
	reg playerPos, $55
	reset playerSpeed
	ld [bgScrollX], a

	ld c, 0
	ld a, [currentStage]
	inc a
	ld d, a
	ld b, 5
.makeScoreLoop::
	ld a, b
	add 5
	daa
	ld b, a
	ld a, c
	adc 0
	daa
	ld c, a
	dec d
	jr nz, .makeScoreLoop

	ld a, b
	ld [score], a
	ld a, c
	ld [score + 1], a
	call copyBgTilemap

	ld hl, fireColumnNextColumnAddr
	ld a, VRAMBgMirror >> 8
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

	ld b, $30
	push bc
	reset VBLANKRegister

include "src/stageStartAnimation.asm"

	reg VBLANKRegister, 1
;	jp bossFight
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
	sub 1
	daa
	ld d, a
	ld [hli], a
	ld a, [hl]
	sbc 0
	daa
	ld [hl], a
	pop hl
	or d
	jp z, bossFight
.noScoreUpdate::
	ld a, $F
	cp [hl]
	inc hl
	jr c, .noCollision
	ld a, [hl]
	cp c
	jp nc, gameOver
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


endBossAnimation::
	xor a
	ld [bossAnimationRegisters], a
	ld hl, bossAttackAnimCounter
nextBossAnimation::
	inc [hl]
	ret

include "src/boss_fights/rumia.asm"
include "src/boss_fights/flandre.asm"

bossFightCallbacks::
	dw bossFightRumia
	dw bossFightFlandre

bossFight::
	ld de, bossAttackCounter
	xor a
	ld bc, endBossRegisters - bossAttackCounter
	call fillMemory

	ld [VBLANKRegister], a
	ld [bossAnimationRegisters], a
	ld [bossAnimationRegisters + 1], a
	reg bossPos, 70
	reg bossPos + 1, 160
	reg bossAttack, -1
	reg bossAttackCounter, 1
	reg bossHp, $FF
	call displayBoss
	ld hl, bossHpDrainCounterMax
	ld a, [hl]
	inc a
	ld [hld], a
	ld [hl], a

	call copyBgTilemap
	ld hl, bossFightCallbacks
	ld a, [currentStage]
	and 1
	sla a
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl

	reset interruptFlag
	ld hl, VBLANKRegister
.loop::
	halt
	bit 7, [hl]

	jr z, .loop
	res 7, [hl]
	ld a, 1
	ld [VRAMBankSelect], a
	startGPDMA VRAMBg1Mirror, VRAMBgStart, $240

	xor a
	ld [VRAMBankSelect], a
	startGPDMA VRAMBgMirror, VRAMBgStart, $240

bossFightLoop::
	reset interruptFlag
	ld hl, VBLANKRegister
.loop::
	halt
	bit 7, [hl]
	jr z, .loop
	res 7, [hl]

	ld hl, bgScrollX
	inc [hl]

	ld hl, playerSpeed
	ld a, [hl]
	pop de
	pop bc
	dec b
	push bc
	push de
	jr nz, .noInc

	pop de
	pop bc
	ld b, GRAVITY_COUNTER
	push bc
	push de
	inc [hl]
.noInc::
	dec l
	add [hl]
	ld [hl], a

	ld a, [playerPos]
	cp 144
	jp nc, gameOver

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
	pop de
	pop bc
	ld b, GRAVITY_COUNTER
	push bc
	push de
.noJump::
	call showPlayer

	ld hl, bossHpDrainCounter
	dec [hl]
	jr nz, .noDec

	inc hl
	ld a, [hld]
	ld [hld], a
	dec [hl]
	jr z, .finish

.noDec::
	pop hl
	push hl
	ld de, bossFightLoop
	push de
	jp hl

.finish::
	pop hl
	ld hl, currentStage
	ld a, [hl]
	add 1
	daa
	ld [hl], a
	jp initGame
