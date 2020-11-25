SECTION "Text", ROMX[$7D00], BANK[1]

crashText::
	db "FATAL\{PC at 0x38"

startText::
	db "Press", 0, 0, "START"

difficulties::
	db 0, "Hard", 0
	db "  Normal  "
	db 0, "Easy", 0

stageText::
	db "Stage "