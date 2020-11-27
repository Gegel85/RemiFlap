copyBgTilemap::
	ld a, 1 << 3
	ld [$FFFA], a
	ld [$FFFB], a
	ld hl, vramBgMirror
	ld de, backgroundMap
.loop:
	res 2, h
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
	set 2, h
	ld a, b
	ld [hli], a
	bit 4, h
	jr z, .loop
	res 2, h
	ret

drawFireColumn::
	push hl
	push bc
	set 2, h
	xor a
	or c
	ld a, 1
	ld de, $20 - 2
	jr z, .loopBank1SkipMiddle
	dec c
	jr z, .loopBank1SkipTop
.loopBank1::
	ld [hli], a
	set 5, a
	ld [hli], a
	res 5, a
	add hl, de
	bit 4, h
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
	push af
	ld a, [fireColumnHoleSize]
	ld c, a
	pop af
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
	res 2, h
	ld e, $20 - 1
	xor a
	or c
	ld a, $81
	jr z, .loopBank0SkipMiddle
	dec c
	jr z, .loopBank0SkipTop
.loopBank0:
	ld [hli], a
	ld [hl], a
	add hl, de
	bit 2, h
	ret nz
	dec c
	jr nz, .loopBank0

.loopBank0SkipTop::
	ld a, $80
	ld [hli], a
	ld [hl], a
	add hl, de
	inc a
.loopBank0SkipMiddle::
	push af
	ld a, [fireColumnHoleSize]
	ld c, a
	pop af
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

drawScore::
	ld hl, score + 1
	ld a, [hl]
	and $F0
	jr z, .not4
	ld bc, $4403
	jr .next
.not4::
	ld a, [hld]
	and $F
	jr z, .not3
	ld bc, $4802
	jr .next
.not3::
	ld a, [hl]
	and $F0
	jr z, .not2
	ld bc, $4C01
	jr .next
.not2::
	ld bc, $5000
.next::
	ld hl, oamSrc + 8 * 4
.loop::
	ld a, $18
	ld [hli], a
	ld a, b
	ld [hli], a
	add 8
	ld b, a
	bit 1, c
	jr z, .lower
	ld a, [score + 1]
	jr .after
.lower::
	ld a, [score]
.after::
	bit 0, c
	jr z, .noSwap
	swap a
.noSwap::
	and $F
	add $82
	ld [hli], a
	ld a, 3
	ld [hli], a
	xor a
	or c
	push af
	dec c
	pop af
	jr nz, .loop

	bit 4, l
	ret nz
.cleanLoop::
	xor a
	ld [hli], a
	inc l
	inc l
	inc l
	bit 4, l
	jr z, .cleanLoop
	ret

bossesSprites::
	db $10, $08, $23, $06
	db $10, $10, $24, $06
	db $10, $18, $23, $26
	db $18, $08, $25, $06
	db $18, $10, $26, $06
	db $18, $18, $25, $26
	db $20, $08, $23, $46
	db $20, $10, $24, $46
	db $20, $18, $23, $66
	db $14, $10, $22, $05
	db $14, $10, $20, $04
	db $1C, $10, $21, $04
	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db $10, $08, $00, $00
	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

displayBoss::
	ld a, [currentStage]
	and 1
	sla a
	sla a
	sla a
	sla a
	sla a
	ld hl, bossesSprites
	ld d, 0
	ld e, a
	add hl, de
	ld de, oamSrc + $18
	ld b, $C
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

stageAnimationRumia::
	ld hl, bossAnimationRegisters

	bit 7, [hl]
	jr nz, .goAway

	bit 6, [hl]
	jr z, .ok

	inc [hl]
	jr .hideMist

.ok::
	ld a, [bossPos + 1]
	cp 100
	jr nz, .approach

	ld a, [hl]
	inc [hl]

	bit 5, a
	jr z, .flash3

	bit 4, a
	jr z, .flash2

	and 3
	jr nz, .hideMist
	jr displayBoss

.flash3::
	bit 4, a
	jr z, displayBoss

	and 3
	jr z, .hideMist
	jr displayBoss

.flash2::
	and 1
	jr z, displayBoss
.hideMist::
	ld hl, oamSrc + $18
	ld b, 9
	xor a
.loop:
	ld [hli], a
	inc hl
	inc hl
	inc hl
	dec b
	jr nz, .loop
	ret
.approach::
	ld a, 1
	xor [hl]
	ld [hl], a
	ld d, a
	ld e, $FE
	jp moveBoss

.goAway::
	ld a, [bossPos + 1]
	cp 160
	jr z, .hideBoss

	ld de, $0002
	jp moveBoss
.hideBoss::
	ld de, oamSrc + $18
	ld bc, $30
	xor a
	jp fillMemory

stageAnimationFlandre::
	ret

stageAnimationTable::
	dw stageAnimationRumia
	dw stageAnimationFlandre

stageAnimation::
	ld hl, stageAnimationTable
	ld a, [currentStage]
	and 1
	sla a
	ld d, 0
	ld e, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

moveBoss::
	ld hl, bossPos
	ld a, [hl]
	add d
	ld [hli], a
	ld a, [hl]
	add e
	ld [hli], a
	ld hl, oamSrc + $18
	ld b, $C
.loop:
	ld a, [hl]
	add d
	ld [hli], a
	ld a, [hl]
	add e
	ld [hli], a
	inc hl
	inc hl
	dec b
	jr nz, .loop
	ret