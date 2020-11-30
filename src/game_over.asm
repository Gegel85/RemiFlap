gameOver::
	reset VBLANKRegister
.mainLoop::
	reset interruptFlag
	ld hl, VBLANKRegister
.loop::
	halt
	bit 7, [hl]
	jr z, .loop
	res 7, [hl]
	call getKeysFiltered
	bit START_BIT, a
	jp z, .initGame
	bit B_BIT, a
	jp z, mainMenu
	ld a, [currentStage]
	bit 0, a
	jr z, .mainLoop
	ld a, [bossAttack]
	cp 3
	call z, flandreAttackFourOfAKind.displayElements
	jr .mainLoop

.initGame:
	reset currentStage
	ld [bossHpDrainCounterMax], a
	jp initGame