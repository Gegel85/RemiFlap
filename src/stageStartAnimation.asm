	jr animateStageStart

bossesAssets::
	; Stage 1, 3, 5, 7, 9, ...
	dw rumia
	dw rumiaPal
	dw darkFirePal
	dw RumiaTheme

baseSpritesValues::
	db $55, $A8, "S", 3
	db $55, $B0, "t", 3
	db $55, $B8, "a", 3
	db $55, $C0, "g", 3
	db $55, $C8, "e", 3
	db $55, $D0, $7E, 3
	db $55, $D8, "0", 3

basicPal::
	dw $7FFF, $7FFF, $0000, $0000

animateStageStart::
	ld hl, cgbObjPalIndex
	ld a, $98
	ld [hli], a
	ld de, basicPal
	ld b, $8
.objPalLoop3::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .objPalLoop3

	call showPlayer

	ld de, oamSrc + $14
	ld bc, $1C
	ld hl, baseSpritesValues
	call copyMemory

	ld a, [currentStage]
	ld b, a
	add "1"
	reg $C52E, a

	ld a, b
	sla a
	sla a
	sla a
	sla a

	ld b, 0
	ld c, a
	ld hl, bossesAssets
	add hl, bc
	ld a, [hli]
	ld b, a
	ld a, [hli]

	push hl
	ld hl, newDmaSrcH
	ld [hl], a
	inc l
	ld [hl], b
	inc l
	ld [hl], $82
	inc l
	ld [hl], $00
	inc l
	ld [hl], $7

	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl

	ld hl, cgbObjPalIndex
	ld a, $A0
	ld [hli], a
	ld b, $20
.objPalLoop::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .objPalLoop

	pop hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	push hl

	ld hl, cgbBgPalIndex
	ld a, $88
	ld [hli], a
	ld b, $10
.bgPalLoop::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .bgPalLoop

	pop hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl

	reg lcdCtrl, %11000011
	ei
	ld b, 16
	ld c, 7
.loop::
	ld hl, VBLANKRegister
	halt
	bit 7, [hl]
	jr z, .loop
	res 7, [hl]

	ld a, 16
	cp c
	jr z, .next

	dec b
	jr nz, .loop

	ld a, 1 << 4
	or c
	sla a
	set 0, a
	sla a
	sla a
	sla a
	or c
	ld [channelCtrl], a
	ld b, 16

	bit 3, c
	jr z, .dec

	inc c
	jr .next
.dec::
	dec c
	jr nz, .loop

	pop hl
	ld de, playingMusics
	call startMusic.noSetupSound
	ld e, 60
	ld c, 8
.next::
	ld hl, oamSrc + $15
	ld a, 60
	cp [hl]
	jr z, .noUpdate

	ld d, 7
.updateSpritesLoop::
	dec [hl]
	dec [hl]
	inc hl
	inc hl
	inc hl
	inc hl
	dec d
	jr nz, .updateSpritesLoop
	ld b, 1
	jr .loop

.noUpdate::
	dec e
	jr nz, .loop


.finishAnim::
	ld de, firePal
	ld b, $8
.objPalLoop2::
	ld a, [de]
	inc de
	ld [hl], a
	dec b
	jr nz, .objPalLoop2

	ld de, $C500
	ld bc, $A0
	xor a
	call fillMemory