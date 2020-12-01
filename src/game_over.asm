gameOver::
	ld a, [bgScrollX]
	ld [scrollBackup], a
	reg lines + 1, 72
	reg lcdLineCmp, 70
	ld [lines], a
	reg lineTimer, 2
	reg lcdStats, 1 << 6
	reset VBLANKRegister
	ld [$FFF0], a
.mainLoop::
	reset interruptFlag
	ld hl, VBLANKRegister
.loop::
	halt
	bit 7, [hl]
	jr z, .loop
	res 7, [hl]
	reset $FFF0
	ld hl, lines
	ld a, [hl]
	ld [lcdLineCmp], a
	cp 59
	jr z, .noChange
	ld a, [lineTimer]
	dec a
	ld [lineTimer], a
	jr nz, .noChange
	ld a, 2
	ld [lineTimer], a
	dec [hl]
	inc hl
	inc [hl]
.noChange::
	call getKeysFiltered
	bit START_BIT, a
	jp z, .initGame
	bit B_BIT, a
	ld hl, mainMenu
	jp z, .move
	ld a, [bossHp]
	or a
	jr z, .mainLoop
	ld a, [currentStage]
	bit 0, a
	jr z, .rumia
	ld a, [bossAttack]
	cp 3
	call z, flandreAttackFourOfAKind.displayElements
	jr .mainLoop
.rumia::
	ld a, [bossAttack]
	cp 2
	call z, rumiaAttack2.drawProjectiles
	jr .mainLoop

.initGame:
	reset currentStage
	reg bossHpDrainCounterMax, 2
	ld hl, initGame
.move::
	reset lcdStats
	jp hl