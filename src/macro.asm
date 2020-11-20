; Like doing ld [**], *
; VBLANK interrupt handler
; Params:
;    \1 -> Address to write to
;    \2 -> Value to write
; Return:
;    None
; Registers:
;    af -> Not preserved
;    bc -> Preserved
;    de -> Preserved
;    hl -> Preserved
reg: MACRO
	ld a, \2
	ld [\1], a
ENDM

startGPDMA: MACRO
	ld hl, newDmaSrcH
	ld [hl], (\1) >> 8
	inc l
	ld [hl], (\1) & $FF
	inc l
	ld [hl], (\2) >> 8
	inc l
	ld [hl], (\2) & $FF
	inc l
	ld [hl], (\3) / $10 - 1
ENDM

startHDMA: MACRO
	ld hl, newDmaSrcH
	ld [hl], (\1) >> 8
	inc l
	ld [hl], (\1) & $FF
	inc l
	ld [hl], (\2) >> 8
	inc l
	ld [hl], (\2) & $FF
	inc l
	ld [hl], (1 << 7) | ((\3) / $10 - 1)
ENDM

reset: MACRO
	xor a
	ld [\1], a
ENDM