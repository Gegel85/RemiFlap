gameOver::
	halt
	call getKeysFiltered
	bit START_BIT, a
	jp z, initGame
	bit B_BIT, a
	jp z, mainMenu
	jr gameOver