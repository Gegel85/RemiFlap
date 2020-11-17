include "src/constants.asm"
include "src/macro.asm"
include "src/registers.asm"

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

spriteInitValues::
	db $55, $20, (backgroundMap - background - $1000) / $10 + 1, $01 ; Top left part of player
	db $57, $28, (backgroundMap - background - $1000) / $10    , $00 ; Remilia hat
	db $5B, $28, (backgroundMap - background - $1000) / $10 + 3, $03 ; Bottom right part of player
	db $5B, $23, (backgroundMap - background - $1000) / $10 + 4, $04 ; Remilia wing
	db $5D, $20, (backgroundMap - background - $1000) / $10 + 2, $02 ; Bottom left part of player

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
	ld bc, $50
	call copyMemory

	ld hl, fireSprite1
	ld bc, $30
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
	reg playerSpeed, -5

	ld hl, spriteInitValues
	ld de, oamSrc
	ld bc, main - spriteInitValues
	call copyMemory

	ld b, 1
	push bc

	halt

	ld hl, vramBgMirror + $10
	ld c, 8
	call drawFireColumn
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

.updatePlayerSprite::
	ld hl, oamSrc
	ld de, 4
	ld a, [playerPos]
	ld [hl], a
	add hl, de
	add 2
	ld [hl], a
	add hl, de
	add 4
	ld [hl], a
	add hl, de
	ld [hl], a
	add hl, de
	add 2
	ld [hl], a
	add hl, de
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
	ld b, 6
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
	reg playerSpeed, -2
.noJump::
	jp gameLoop


include "src/init.asm"
include "src/interrupts.asm"
include "src/sound/music.asm"
include "src/sound/sfx.asm"
include "src/utils.asm"
include "src/drawer.asm"