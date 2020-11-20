gameOver::
	halt
	ld a, [lcdLine]
	cp $90
	jr c, gameOver
	call getKeysFiltered
	bit START_BIT, a
	jp z, initGame
	bit B_BIT, a
	jp z, mainMenu
	jr gameOver