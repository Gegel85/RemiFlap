DMACode::
LOAD "DMA", HRAM
DMA::
        ld [dmaTrnCtrl], a
        ld a, DMA_DELAY
.wait:
        dec a
        jr nz, .wait
        ret
ENDL
DMACodeEnd::

WPRAM_init::
	db $00, $11, $22, $33, $44, $55, $66, $77
	db $88, $99, $AA, $BB, $CC, $DD, $EE, $FF

; Enable interrupts and init RAM
; Params:
;    None
; Return:
;    None
; Registers:
;    af -> Preserved
;    bc -> Not preserved
;    de -> Not preserved
;    hl -> Not preserved
init::
	reg interruptEnable, VBLANK_INTERRUPT | TIMER_INTERRUPT | STAT_INTERRUPT

	call waitVBLANK
	reset lcdCtrl

	xor a
	ld bc, $6000
	ld de, vramStart
	call fillMemory

	ld bc, $10
	ld hl, WPRAM_init
	ld de, $FF30
	call copyMemory

        ld de, $FF80
        ld hl, DMACode
	ld bc, DMACodeEnd - DMACode
        call copyMemory

	pop de
	ld sp, stackBottom
	push de

	ei
	ret