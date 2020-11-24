include "src/sound/apparition_stalk_the_night/channel1.asm"
include "src/sound/apparition_stalk_the_night/channel2.asm"
include "src/sound/apparition_stalk_the_night/channel3.asm"
include "src/sound/apparition_stalk_the_night/channel4.asm"

RumiaTheme::
	db $100 - $8E
	db %100
	dw musicChan1RumiaTheme
	dw musicChan2RumiaTheme
	dw musicChan3RumiaTheme
	dw musicChan4RumiaTheme