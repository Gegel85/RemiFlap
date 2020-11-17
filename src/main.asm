include "src/constants.asm"
include "src/macro.asm"
include "src/registers.asm"

SPEED_FORCE = 2
MAX_UP_SPEED = -6
GRAVITY_COUNTER = 6
TIME_SPAWN_TIMING = 8
FIRE_COLUMS_HOLE_SIZE = 4

SECTION "Main", ROM0

notCGB::
	call waitVBLANK
	reset lcdCtrl
	reg dmgBgPalData, $E4
	ld hl, noCGBScreen
	ld de, vramStart
	ld bc, noCGBScreenMap - noCGBScreen
	call copyMemory

	ld b, 18
	push hl
	ld hl, vramBgStart
	pop de
.loop:
	ld c, 20
.miniLoop:
	ld a, [de]
	ld [hli], a
	inc de
	dec c
	jr nz, .miniLoop
	push bc
	ld bc, 12
	add hl, bc
	pop bc
	dec b
	jr nz, .loop

	reg lcdCtrl, %11010001

; Locks the CPU
; Params:
;	None
; Return:
;	None
; Registers:
;	N/A
lockup::
	reset interruptFlag
	ld [interruptEnable], a
.loop:
	halt
	jr .loop

fireCustomPal::
	dw $3DEF, $018F, $00CF, $000F

; Main function
main::
	ld sp, $FFFF
	cp CGB_A_INIT
	jp nz, notCGB
	call init

mainMenu::

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
	ld b, $30
.objPalLoop::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .objPalLoop

	call copyBgTilemap

	reg lcdCtrl, %10010011
initGame::
	reg playerPos, $55
	reset playerSpeed

	ld hl, fireColumnNextColumnAddr
	ld a, vramBgMirror >> 8
	ld [hli], a
	xor a
	ld [hli], a
	ld a, 6 * 8
	ld [hl], a

	ld b, $30
	push bc
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
	ld b, b
	call random
	ld a, [playerSpeed]
	ld b, a
	srl a
	sub SPEED_FORCE
	bit 7, b
	jr z, .ok
	set 7, a
	cp MAX_UP_SPEED
	jr nc, .ok
	ld a, MAX_UP_SPEED
	jr .ok
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
	call drawFireColumn

.noFireGeneration::
	jp gameLoop


include "src/init.asm"
include "src/interrupts.asm"
include "src/sound/music.asm"
include "src/sound/sfx.asm"
include "src/utils.asm"
include "src/drawer.asm"
include "src/animation.asm"