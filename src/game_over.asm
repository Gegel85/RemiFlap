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
	jp initGame