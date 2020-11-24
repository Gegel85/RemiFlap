musicChan2RumiaTheme::
	setRegisters $A5, $F4, $00, $00

.loop:
	repeat 2
	setFrequency NOTE_F * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER

	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait CROTCHET

	setFrequency NOTE_C * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER

	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_Db, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait SEMIQUAVER + CROTCHET
	continue

	setFrequency NOTE_C * 2, $80
	wait MINIM
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER

	repeat MINIM / 2
	setFrequency NOTE_Ab, $80
	wait 1
	setFrequency NOTE_F * 2, $80
	wait 1
	continue
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_F * 2, $80
	wait MINIM
	setFrequency NOTE_Ab * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER

	repeat MINIM / 2
	setFrequency NOTE_Ab, $80
	wait 1
	setFrequency NOTE_C * 2, $80
	wait 1
	continue
	wait QUAVER3
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER3
	setFrequency NOTE_G * 2, $80
	wait QUAVER3
	setFrequency NOTE_Bb, $80
	wait QUAVER3
	setFrequency NOTE_G * 2, $80
	wait QUAVER3
	setFrequency NOTE_F * 2, $80
	wait QUAVER3

	setFrequency NOTE_C * 2, $80
	wait MINIM
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER

	repeat MINIM / 2
	setFrequency NOTE_Ab, $80
	wait 1
	setFrequency NOTE_C * 2, $80
	wait 1
	continue
	setFrequency NOTE_F, $80
	wait QUAVER3
	setFrequency NOTE_G, $80
	wait QUAVER3
	setFrequency NOTE_Ab, $80
	wait QUAVER3
	setFrequency NOTE_Bb, $80
	wait QUAVER3
	setFrequency NOTE_C * 2, $80
	wait QUAVER3
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER3

	setFrequency NOTE_F * 2, $80
	wait MINIM
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_E * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_E * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER

	; Loop
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 4, $80
	wait QUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait CROTCHET
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER

	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 4, $80
	wait QUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait CROTCHET
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Gb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb * 2, $80
	wait DOTTED_MINIM
	setFrequency NOTE_F * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Db * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb * 2, $80
	wait QUAVER3
	setFrequency NOTE_F * 2, $80
	wait QUAVER3
	setFrequency NOTE_Db * 2, $80
	wait QUAVER3
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER3
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER3
	setFrequency NOTE_C * 2, $80
	wait QUAVER3
	setFrequency NOTE_F * 2, $80
	wait QUAVER3
	setFrequency NOTE_Db * 2, $80
	wait QUAVER3
	setFrequency NOTE_Bb, $80
	wait QUAVER3
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait CROTCHET
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait CROTCHET
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_Gb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb, $80
	wait DOTTED_MINIM
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Db * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb, $80
	wait QUAVER3
	setFrequency NOTE_F, $80
	wait QUAVER3
	setFrequency NOTE_Db, $80
	wait QUAVER3
	setFrequency NOTE_Ab, $80
	wait QUAVER3
	setFrequency NOTE_Eb, $80
	wait QUAVER3
	setFrequency NOTE_C, $80
	wait QUAVER3
	setFrequency NOTE_Bb, $80
	wait QUAVER3
	setFrequency NOTE_F, $80
	wait QUAVER3
	setFrequency NOTE_Db, $80
	wait QUAVER3
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Db * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 4, $80
	wait QUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait CROTCHET
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER

	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 4, $80
	wait QUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait CROTCHET
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Gb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb * 2, $80
	wait DOTTED_MINIM
	setFrequency NOTE_F * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Db * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb * 2, $80
	wait QUAVER3
	setFrequency NOTE_F * 2, $80
	wait QUAVER3
	setFrequency NOTE_Db * 2, $80
	wait QUAVER3
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER3
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER3
	setFrequency NOTE_C * 2, $80
	wait QUAVER3
	setFrequency NOTE_F * 2, $80
	wait QUAVER3
	setFrequency NOTE_Db * 2, $80
	wait QUAVER3
	setFrequency NOTE_Bb, $80
	wait QUAVER3
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait CROTCHET
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait CROTCHET
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_Gb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb, $80
	wait DOTTED_MINIM
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Db * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_Bb, $80
	wait SEMIBREVE

	stopMusic
	jump .loop