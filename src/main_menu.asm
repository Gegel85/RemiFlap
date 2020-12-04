ARROW_LEFT_ADDR = $9925
ARROW_RIGHT_ADDR = $992E

mainMenu::
	di
	call waitVBLANK
	reset lcdCtrl

	reset VBLANKRegister
	reg VRAMBankSelect, 1
	ld de, VRAMBgStart
	xor a
	ld [bgScrollX], a
	ld bc, $800
	call fillMemory

	reg ARROW_LEFT_ADDR, 1 << 5

	reg ROMBankSelect, 2
	reset VRAMBankSelect
	ld de, VRAMWinStart
	ld bc, $400
	call fillMemory
	startGPDMA mainMenuBg, VRAMStart, noCGBScreen - mainMenuBg

	reset ROMBankSelect
	ld de, VRAMStart + "A" * $10
	ld hl, font
	ld a, 2
	ld bc, 8 * 26
	call uncompress

	ld de, VRAMStart + "0" * $10
	ld bc, 8 * 10
	call uncompress

	ld de, VRAMStart + "a" * $10
	ld bc, 8 * 30
	call uncompress

	ld de, mainMenuBgMap
	ld hl, VRAMBgStart
	ld b, 18
.copyLoop:
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
	jr nz, .copyLoop

	ld hl, cgbBgPalIndex
	ld a, $80
	ld [hli], a
	ld de, mainMenuBgPal
	ld b, $8
.bgPalLoop::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .bgPalLoop

	ld a, "|"
	ld [ARROW_LEFT_ADDR], a
	ld [ARROW_RIGHT_ADDR], a

	ld a, [fireColumnHoleSize]
	or a
	jr nz, .next
	ld a, 5
	ld [fireColumnHoleSize], a
.next::
	call updateDifficultyIndicator

	ld de, $99C4
	ld bc, 12
	ld hl, startText
	call copyMemory

	reg winPosXMinus7, 7
	reg winPosY, 80

	reg lcdCtrl, %11010001

	xor a
	ld [mainMenuArrowAnimationCounter], a

	ld hl, RemiliaTheme
	ld de, playingMusics
	call startMusic

	ei
.loop::
	reset interruptFlag
	ld hl, mainMenuArrowAnimationCounter
	inc [hl]
	bit 5, [hl]
	jr z, .skip
	ld [hl], a
	ld a, [ARROW_LEFT_ADDR]
	bit 7, a
	jr nz, .skip
	xor 1
	ld [ARROW_LEFT_ADDR], a
	ld [ARROW_RIGHT_ADDR], a
	ld a, [lcdCtrl]
	xor 1 << 5
	ld [lcdCtrl], a
.skip::
	call getKeysFiltered
	bit START_BIT, a
	jr z, game
	bit LEFT_BIT, a
	jr z, .left
	bit RIGHT_BIT, a
	jr nz, .halt

	ld hl, fireColumnHoleSize
	dec [hl]
	ld a, MAX_DIFFICULTY - 1
	cp [hl]
	jr nz, .halt
	ld a, MIN_DIFFICULTY
	ld [hl], a
	jr .halt
.left::
	ld hl, fireColumnHoleSize
	inc [hl]
	ld a, MIN_DIFFICULTY + 1
	cp [hl]
	jr nz, .halt
	ld a, MAX_DIFFICULTY
	ld [hl], a
.halt::
	reset interruptFlag
	ld hl, VBLANKRegister
.loop2::
	halt
	bit 7, [hl]
	jr z, .loop2
	res 7, [hl]
	call random
	ld a, [fireColumnHoleSize]
	call updateDifficultyIndicator
	jr .loop

updateDifficultyIndicator::
	ld hl, difficulties
	sub MAX_DIFFICULTY
	sla a
	sla a
	sla a
	ld d, 0
	ld e, a
	add hl, de
	ld de, $9927
	ld bc, 6
	jp copyMemory