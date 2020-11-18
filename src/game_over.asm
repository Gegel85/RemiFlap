gameOver::
	call getKeysFiltered
	bit START_BIT, a
	jp z, initGame
	jr gameOver