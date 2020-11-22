include "src/sound/septette_for_the_dead_princess/channel1.asm"
include "src/sound/septette_for_the_dead_princess/channel2.asm"
include "src/sound/septette_for_the_dead_princess/channel3.asm"
include "src/sound/septette_for_the_dead_princess/channel4.asm"

RemiliaTheme::
	db $100 - $96
	db %100
	dw musicChan1RemiliaTheme
	dw musicChan2RemiliaTheme
	dw musicChan3RemiliaTheme
	dw musicChan4RemiliaTheme