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
	jr .mainLoop
.initGame:
	reset currentStage
	jp initGame