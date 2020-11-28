; VBLANK interrupt handler
; Params:
;    None
; Return:
;    None
; Registers:
;    af -> Preserved
;    bc -> Preserved
;    de -> Preserved
;    hl -> Preserved
vblank_interrupt::
	push af
	push hl
	push de
	push bc
	ld hl, VBLANKRegister
	bit 7, [hl]
	jr nz, .noCopy
	call updateSfx
	xor a
	ld hl, frameCounter
	or [hl]
	jr z, .skip
	dec [hl]
.skip:
	ld a, oamSrc >> 8
	call DMA
	ld hl, fireAnimationCounter
	ld a, [hl]
	add 8
	ld [hl], a
	and $1F
	jr nz, .noAnimChange
	reset VRAMBankSelect
	bit 5, [hl]
	ld hl, newDmaSrcH
	jr z, .anim2
	ld [hl], fireSprite1 >> 8
	inc l
	ld [hl], fireSprite1 & $FF
	jr .changeAnimation

.anim2::
	ld [hl], fireSprite2 >> 8
	inc l
	ld [hl], fireSprite2 & $FF

.changeAnimation::
	inc l
	ld [hl], ($800 + VRAMStart) >> 8
	inc l
	ld [hl], ($800 + VRAMStart) & $FF
	inc l
	ld [hl], $0B

.noAnimChange::
	ld hl, VBLANKRegister
	ld a, [hl]
	bit 0, a
	jr z, .noCopy

	ld [VRAMBankSelect], a
	startGPDMA VRAMBg1Mirror, VRAMBgStart, $240

	xor a
	ld [VRAMBankSelect], a
	startHDMA VRAMBgMirror, VRAMBgStart, $240
	ld hl, VBLANKRegister
.noCopy::
	set 7, [hl]
	pop bc
	pop de
	pop hl
	pop af
	reti

; HBLANK interrupt handler
; Params:
;    None
; Return:
;    None
; Registers:
;    af -> Preserved
;    bc -> Preserved
;    de -> Preserved
;    hl -> Preserved
hblank_interrupt::
	reti

; Timer interrupt handler
; Params:
;    None
; Return:
;    None
; Registers:
;    af -> Preserved
;    bc -> Preserved
;    de -> Preserved
;    hl -> Preserved
timer_interrupt::
	push af
	push bc
	push de
	push hl
	ld hl, playingMusics
	call updateMusics
	pop hl
	pop de
	pop bc
	pop af
	reti

; Serial interrupt handler
; Params:
;    None
; Return:
;    None
; Registers:
;    af -> Preserved
;    bc -> Preserved
;    de -> Preserved
;    hl -> Preserved
serial_interrupt::
	reti

; Joypad interrupt handler
; Params:
;    None
; Return:
;    None
; Registers:
;    af -> Preserved
;    bc -> Preserved
;    de -> Preserved
;    hl -> Preserved
joypad_interrupt::
	reti
