copyBgTilemap::
	ld a, 1 << 3
	ld [$FFFA], a
	ld [$FFFB], a
	ld hl, vramBgMirror
	ld de, backgroundMap
.loop:
	reset WRAMBankSelect
	ld a, [de]
	inc de
	ld [hl], a
	xor $FF
	jr z, .bitSet
	bit 7, a
	jr z, .force
	cp $FF
	ld a, [$FFFB]
	jr nz, .writeValue
	ld b, a
	ld a, [$FFFA]
	ld c, a
	xor a
	ld [$FFFA], a
	xor a
	and c
	ld a, b
	jr z, .force
	jr .writeValue
.bitSet:
	reset $FFFB
.force::
	ld a, 1 << 3
.writeValue:
	ld b, a
	reg WRAMBankSelect, 3
	ld a, b
	ld [hli], a
	bit 2, h
	jr z, .loop
	reset WRAMBankSelect
	ret

drawFireColumn::
	push hl
	push bc
	reg WRAMBankSelect, 3
	xor a
	or c
	ld a, 1
	ld de, $20 - 2
	jr z, .loopBank1SkipMiddle
	cp c
	jr z, .loopBank1SkipTop
.loopBank1::
	ld [hli], a
	set 5, a
	ld [hli], a
	res 5, a
	add hl, de
	bit 2, h
	jr nz, .next
	dec c
	jr nz, .loopBank1

.loopBank1SkipTop::
	set 6, a
	ld [hli], a
	set 5, a
	ld [hli], a
	and ~(1 << 5) & ~(1 << 6)
	add hl, de
.loopBank1SkipMiddle::
	inc a
	ld c, FIRE_COLUMS_HOLE_SIZE
.loopBank1Middle::
	ld [hli], a
	set 5, a
	ld [hli], a
	res 5, a
	add hl, de
	dec c
	jr nz, .loopBank1Middle
	dec a
	jr .loopBank1

.next::
	pop bc
	pop hl
	reset WRAMBankSelect
	ld e, $20 - 1
	inc a
	cp c
	jr z, .loopBank0SkipTop
	xor a
	or c
	ld a, ((backgroundMap - background - $1000) + (fireSprite1 - remiliaSprite)) / $10 + 1
	jr z, .loopBank0SkipMiddle
.loopBank0:
	ld [hli], a
	ld [hl], a
	add hl, de
	bit 2, h
	ret nz
	dec c
	jr nz, .loopBank0

.loopBank0SkipTop::
	ld a, ((backgroundMap - background - $1000) + (fireSprite1 - remiliaSprite)) / $10
	ld [hli], a
	ld [hl], a
	add hl, de
	inc a
.loopBank0SkipMiddle::
	ld c, FIRE_COLUMS_HOLE_SIZE
.loopBank0Middle::
	ld [hli], a
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loopBank0Middle
	dec a
	ld [hli], a
	ld [hl], a
	inc a
	add hl, de
	jr .loopBank0