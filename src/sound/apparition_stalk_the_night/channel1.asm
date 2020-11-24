musicChan1RumiaTheme::
	setRegisters $00, $A5, $F3, $00, $00
.loop:
	repeat 4
	setFrequency NOTE_Ab, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	wait MINIM + DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	wait SEMIBREVE
	continue

	repeat 2
	setFrequency NOTE_Ab, $80
	wait SEMIBREVE * 2
	continue

	setFrequency NOTE_Ab, $80
	wait MINIM
	setFrequency NOTE_G, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	wait SEMIBREVE
	setFrequency NOTE_Ab, $80
	wait SEMIBREVE

	setFrequency NOTE_G, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait DOTTED_CROTCHET + CROTCHET

	stopMusic
	jump .loop