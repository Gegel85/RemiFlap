copyBgTilemap::
	ld a, 1 << 3
	ld [$FFFD], a
	ld [$FFFE], a
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
	ld a, [$FFFE]
	jr nz, .writeValue
	ld b, a
	ld a, [$FFFD]
	ld c, a
	xor a
	ld [$FFFD], a
	xor a
	and c
	ld a, b
	jr z, .force
	jr .writeValue
.bitSet:
	reset $FFFE
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
	ld de, $20 - 2
	res 1, a
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

	set 6, a
	ld [hli], a
	set 5, a
	ld [hli], a
	and ~(1 << 5) & ~(1 << 6)
	add hl, de
	ld e, $20
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	ld e, $20 - 2
	jr .loopBank1

.next::
	pop bc
	pop hl
	reset WRAMBankSelect
	ld e, $20 - 1
	ld a, ((backgroundMap - background - $1000) + (fireSprite1 - remiliaSprite)) / $10 + 2
.loopBank0:
	ld [hli], a
	ld [hl], a
	add hl, de
	bit 2, h
	ret nz
	dec c
	jr nz, .loopBank0

	dec a
	dec a
	ld [hli], a
	ld [hl], a
	add hl, de
	inc e
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	ld [hli], a
	ld [hl], a
	inc a
	inc a
	dec e
	add hl, de
	jr .loopBank0