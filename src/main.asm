include "src/constants.asm"
include "src/macro.asm"
include "src/registers.asm"

SPEED_FORCE = 2
GRAVITY_COUNTER = 6
TIME_SPAWN_TIMING = 8
FIRE_COLUMS_HOLE_SIZE = 4

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

; Main function
main::
	ld sp, $FFFF
	cp CGB_A_INIT
	jp nz, notCGB
	call init


include "src/main_menu.asm"
include "src/in_game.asm"
include "src/game_over.asm"
include "src/init.asm"
include "src/interrupts.asm"
include "src/sound/music.asm"
include "src/sound/sfx.asm"
include "src/utils.asm"
include "src/drawer.asm"
include "src/animation.asm"