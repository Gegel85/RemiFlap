include "src/sound/un_owen_was_her/channel1.asm"
include "src/sound/un_owen_was_her/channel2.asm"
include "src/sound/un_owen_was_her/channel3.asm"
include "src/sound/un_owen_was_her/channel4.asm"

FlandreTheme::
	db $100 - $83
	db %100
	dw musicChan1FlandreTheme
	dw musicChan2FlandreTheme
	dw musicChan3FlandreTheme
	dw musicChan4FlandreTheme