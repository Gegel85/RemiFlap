musicChan1RemiliaTheme::
	setRegisters $00, $46, $F3, $00, $00

	repeat 3
	wait CROTCHET
	setFrequency NOTE_Eb, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait CROTCHET
	setFrequency NOTE_D / 2, $80
	wait CROTCHET
	continue

	wait CROTCHET
	setFrequency NOTE_Eb, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait DOTTED_CROTCHET

	wait CROTCHET
	setFrequency NOTE_Eb, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait CROTCHET
	setFrequency NOTE_Ab / 2, $80
	wait CROTCHET

	wait CROTCHET
	setFrequency NOTE_Eb, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait CROTCHET
	setFrequency NOTE_Bb / 2, $80
	wait CROTCHET

	wait CROTCHET
	setFrequency NOTE_Eb, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait CROTCHET
	setFrequency NOTE_D / 2, $80
	wait CROTCHET

	setFrequency NOTE_Eb, $80
	wait MINIM
	wait MINIM

	wait SEMIBREVE * 8

.loop:
	setFrequency NOTE_G, $80
	wait MINIM + QUAVER
	wait DOTTED_CROTCHET

	setFrequency NOTE_Eb, $80
	wait SEMIBREVE

	wait SEMIBREVE * 4

	setFrequency NOTE_G * 2, $80
	wait MINIM + QUAVER
	wait DOTTED_CROTCHET

	setFrequency NOTE_Eb * 2, $80
	wait MINIM
	wait MINIM

	setFrequency NOTE_G, $80
	wait MINIM
	setFrequency NOTE_F, $80
	wait MINIM

	setFrequency NOTE_Eb, $80
	wait SEMIBREVE

	setFrequency NOTE_G, $80
	wait MINIM
	setFrequency NOTE_F, $80
	wait MINIM

	setFrequency NOTE_Eb * 2, $80
	wait SEMIBREVE

	setFrequency NOTE_Ab, $80
	wait CROTCHET
	setFrequency NOTE_Ab, $80
	wait CROTCHET
	wait MINIM

	setFrequency NOTE_G, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait CROTCHET
	wait MINIM

	setFrequency NOTE_C * 2, $80
	wait MINIM
	setFrequency NOTE_B, $80
	wait MINIM

	setFrequency NOTE_Ab, $80
	wait MINIM
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait MINIM
	wait QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER

	setFrequency NOTE_G * 2, $80
	wait MINIM
	wait QUAVER
	setFrequency NOTE_G * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_C * 4, $80
	wait QUAVER

	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_G * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER

	setFrequency NOTE_Eb * 2, $80
	wait CROTCHET
	setFrequency NOTE_Eb * 2, $80
	wait CROTCHET
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_B, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait MINIM
	setFrequency NOTE_D * 2, $80
	wait MINIM

	repeat 2
	setFrequency NOTE_Gb, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	continue
	setFrequency NOTE_Gb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	repeat 2
	setFrequency NOTE_Gb, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	continue
	setFrequency NOTE_Gb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Gb, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Gb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER

	setFrequency NOTE_Gb, $80
	wait DOTTED_MINIM
	wait QUAVER
	wait QUAVER

	; 45
	repeat 2
	setFrequency NOTE_Gb, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	continue
	setFrequency NOTE_Gb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	repeat 2
	setFrequency NOTE_Gb, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	continue
	setFrequency NOTE_Gb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Gb, $80
	wait QUAVER
	setFrequency NOTE_Ab, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER

	setFrequency NOTE_F, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	wait CROTCHET
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	setFrequency NOTE_A, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_Eb, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	setFrequency NOTE_A, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	setFrequency NOTE_A, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_E, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER

	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER + MINIM

	setFrequency NOTE_G, $80
	wait DOTTED_MINIM
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	setFrequency NOTE_A, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_Eb, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	setFrequency NOTE_A, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER

	setFrequency NOTE_A, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_E, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER

	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER + MINIM

	setFrequency NOTE_G, $80
	wait MINIM
	setFrequency NOTE_G / 2, $80
	wait MINIM

	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER
	wait MINIM

	setFrequency NOTE_D, $80
	wait CROTCHET
	setFrequency NOTE_D, $80
	wait CROTCHET
	wait MINIM

	wait SEMIBREVE * 4

	setFrequency NOTE_D, $80
	wait CROTCHET
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait CROTCHET
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER

	wait SEMIBREVE
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	wait MINIM

	setFrequency NOTE_Bb, $80
	wait CROTCHET
	setFrequency NOTE_Bb, $80
	wait CROTCHET
	wait MINIM

	wait SEMIBREVE * 4

	setFrequency NOTE_D, $80
	wait CROTCHET
	wait CROTCHET
	setFrequency NOTE_G * 2, $80
	wait CROTCHET
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER + SEMIBREVE

	stopMusic
	jump .loop