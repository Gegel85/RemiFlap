remiliaSpritesParams::
	db $28, $00
	db $00, $01
	db $80, $01
	db $68, $01
	db $63, $02
	ds $2
	ds $2
	ds $2
	db $69, $00 ; incbin "assets/remim45d/remi_hat.cfx"
	db $53, $02 ; incbin "assets/remim45d/remi_wing.cfx"
	db $98, $00 ; incbin "assets/remim45d/remi_mouth.cfx"
	db $00, $01 ; incbin "assets/remim45d/remilia.cfx"
	db $08, $01
	db $80, $01
	db $88, $01
	ds $2
	db $79, $00 ; incbin "assets/remim45d/remi_hat.cfx"
	db $04, $02 ; incbin "assets/remim45d/remi_wing.cfx"
	db $C6, $00 ; incbin "assets/remim45d/remi_mouth.cfx"
	db $00, $01 ; incbin "assets/remim45d/remilia.cfx"
	db $08, $01
	db $80, $01
	db $88, $01
	ds $2
	db $F6, $00 ; incbin "assets/remim45d/remi_hat.cfx"
	db $55, $02 ; incbin "assets/remim45d/remi_wing.cfx"
	db $09, $00 ; incbin "assets/remim45d/remi_mouth.cfx"
	db $00, $01 ; incbin "assets/remim45d/remilia.cfx"
	db $08, $01
	db $80, $01
	db $88, $01
	ds $2


showPlayer::
	ld hl, oamSrc
	ld de, remiliaSpritesParams
	ld a, [playerPos]
	ld c, a
	ld a, [playerSpeed]

	ld b, b
	bit 7, a
	jr nz, .anim3

	and %01111110
	jr z, .calculateAddresses

	and %01111100
	jr z, .anim1

	ld a, 2
	jr .calculateAddresses
.anim1::
	inc a
	jr .calculateAddresses
.anim3::
	ld a, 3
.calculateAddresses::
	sla a
	sla a
	sla a
	ld [$FFFC], a
	sla a
	ld [$FFFA], a
	add e
	ld e, a
	ld a, 0
	adc d
	ld d, a

	ld a, [$FFFC]
	add (backgroundMap - background - $1000) / $10
	ld [$FFFB], a
	ld b, 8
.loop:
	ld a, [de]
	push af
	swap a
	and $F
	cp $F
	jr nz, .notZero
	ld a, $FF
.notZero::
	add c
	inc de
	ld [hli], a
	pop af
	and $F
	add $20
	ld [hli], a
	ld a, [$FFFB]
	ld [hli], a
	inc a
	ld [$FFFB], a
	ld a, [de]
	inc de
	ld [hli], a
	dec b
	jr nz, .loop
	ret

