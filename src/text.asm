SECTION "Text", ROMX[$7D00], BANK[1]

crashText::
	db "FATAL ERROR} PC AT 38H"

startText::
	db "Press", 0, 0, "START"

difficulties::
	db 0, "Hard", 0
	db "  Normal  "
	db 0, "Easy", 0