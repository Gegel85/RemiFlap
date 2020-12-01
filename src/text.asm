SECTION "Text", ROMX[$7F00], BANK[1]

NEWCHARMAP default
CHARMAP " ", "~"
CHARMAP ":", "\{"

crashText::
	db "FATAL:PC at 0x38"

startText::
	db "Press  START"

difficulties::
	db " Hard   "
	db "Normal  "
	db " Easy   "

stageText::
	db "Stage "

NEWCHARMAP go
CHARMAP " ", "~"  | $80
CHARMAP ":", "\{" | $80
CHARMAP "A", "A"  | $80
CHARMAP "B", "B"  | $80
CHARMAP "C", "C"  | $80
CHARMAP "D", "D"  | $80
CHARMAP "E", "E"  | $80
CHARMAP "F", "F"  | $80
CHARMAP "G", "G"  | $80
CHARMAP "H", "H"  | $80
CHARMAP "I", "I"  | $80
CHARMAP "J", "J"  | $80
CHARMAP "K", "K"  | $80
CHARMAP "L", "L"  | $80
CHARMAP "M", "M"  | $80
CHARMAP "N", "N"  | $80
CHARMAP "O", "O"  | $80
CHARMAP "P", "P"  | $80
CHARMAP "Q", "Q"  | $80
CHARMAP "R", "R"  | $80
CHARMAP "S", "S"  | $80
CHARMAP "T", "T"  | $80
CHARMAP "U", "U"  | $80
CHARMAP "V", "V"  | $80
CHARMAP "W", "W"  | $80
CHARMAP "X", "X"  | $80
CHARMAP "Y", "Y"  | $80
CHARMAP "Z", "Z"  | $80
CHARMAP "a", "a"  | $80
CHARMAP "b", "b"  | $80
CHARMAP "c", "c"  | $80
CHARMAP "d", "d"  | $80
CHARMAP "e", "e"  | $80
CHARMAP "f", "f"  | $80
CHARMAP "g", "g"  | $80
CHARMAP "h", "h"  | $80
CHARMAP "i", "i"  | $80
CHARMAP "j", "j"  | $80
CHARMAP "k", "k"  | $80
CHARMAP "l", "l"  | $80
CHARMAP "m", "m"  | $80
CHARMAP "n", "n"  | $80
CHARMAP "o", "o"  | $80
CHARMAP "p", "p"  | $80
CHARMAP "q", "q"  | $80
CHARMAP "r", "r"  | $80
CHARMAP "s", "s"  | $80
CHARMAP "t", "t"  | $80
CHARMAP "u", "u"  | $80
CHARMAP "v", "v"  | $80
CHARMAP "w", "w"  | $80
CHARMAP "x", "x"  | $80
CHARMAP "y", "y"  | $80
CHARMAP "z", "z"  | $80

gameOverText::
	db "      GAMEOVER      "
	db "    START: Retry    "
	db "    B: Main menu    "