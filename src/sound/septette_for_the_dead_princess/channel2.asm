musicChan2RemiliaTheme::
	setRegisters $A5, $F4, $00, $00

	repeat 3
	setFrequency NOTE_G / 2, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	continue

	setFrequency NOTE_G / 2, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait CROTCHET
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait CROTCHET

	; 5
	setFrequency NOTE_Ab / 4, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_Ab / 4, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER

	setFrequency NOTE_D / 2, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER

	setFrequency NOTE_G / 2, $80
	wait CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER

	setFrequency NOTE_G, $80
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
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER

	; 10
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
	setFrequency NOTE_F * 2, $80
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

	; 15
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_B, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait MINIM
	setFrequency NOTE_D * 2, $80
	wait MINIM

.loop:
	setFrequency NOTE_Eb * 2, $80
	wait MINIM + QUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER

	setFrequency NOTE_A, $80
	wait SEMIBREVE

	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER

	; 20
	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER

	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab, $80
	wait SEMIQUAVER

	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	wait CROTCHET
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Eb, $80
	wait QUAVER

	setFrequency NOTE_Eb * 4, $80
	wait MINIM + QUAVER
	setFrequency NOTE_D * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Ab * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_A * 2, $80
	wait MINIM
	wait QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	; 25
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_F * 2, $80
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
	setFrequency NOTE_F * 2, $80
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

	; 30
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
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_B, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait MINIM
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER

	setFrequency NOTE_G * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_G * 2, $80
	wait QUAVER

	setFrequency NOTE_Eb * 2, $80
	wait MINIM
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER

	; 35
	setFrequency NOTE_G * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb * 2, $80
	wait CROTCHET
	setFrequency NOTE_C * 4, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER

	setFrequency NOTE_A * 2, $80
	wait MINIM
	wait QUAVER
	setFrequency NOTE_C * 4, $80
	wait QUAVER
	setFrequency NOTE_D * 4, $80
	wait QUAVER
	setFrequency NOTE_Eb * 4, $80
	wait QUAVER

	setFrequency NOTE_Ab * 2, $80
	wait CROTCHET
	setFrequency NOTE_Ab * 2, $80
	wait CROTCHET
	wait QUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 4, $80
	wait QUAVER

	setFrequency NOTE_G * 2, $80
	wait CROTCHET
	setFrequency NOTE_G * 2, $80
	wait CROTCHET
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER

	setFrequency NOTE_G * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	; 40
	setFrequency NOTE_Eb * 2, $80
	wait MINIM
	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER

	repeat 2
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	continue
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Gb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER

	repeat 2
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	continue
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER

	setFrequency NOTE_Gb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait DOTTED_MINIM
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER

	; 45
	repeat 2
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	continue
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Gb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER

	repeat 2
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	continue
	setFrequency NOTE_Eb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER

	setFrequency NOTE_Gb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Eb * 2, $80
	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Gb * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_Ab * 2, $80
	wait QUAVER

	setFrequency NOTE_D * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_F * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait QUAVER

	wait CROTCHET
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	; 50
	setFrequency NOTE_C * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER

	; 55
	wait DOTTED_MINIM
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER + MINIM

	setFrequency NOTE_D  * 2, $80
	wait DOTTED_MINIM
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	; 50
	setFrequency NOTE_C * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F * 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	wait DOTTED_MINIM
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_C * 2, $80
	wait DOTTED_CROTCHET
	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER

	; 55
	wait DOTTED_MINIM
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait QUAVER

	setFrequency NOTE_Bb, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER + MINIM

	setFrequency NOTE_D  * 2, $80
	wait MINIM
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER

	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER

	; 60
	repeat 2
	setFrequency NOTE_G, $80
	wait QUAVER3
	setFrequency NOTE_D * 2, $80
	wait QUAVER3
	setFrequency NOTE_C * 2, $80
	wait QUAVER3
	continue
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER

	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait QUAVER3
	setFrequency NOTE_A / 2, $80
	wait QUAVER3
	setFrequency NOTE_Bb / 2, $80
	wait QUAVER3
	setFrequency NOTE_G / 2, $80
	wait QUAVER3
	setFrequency NOTE_A / 2, $80
	wait QUAVER3
	setFrequency NOTE_F / 2, $80
	wait QUAVER3

	setFrequency NOTE_G / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D, $80
	wait QUAVER
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A / 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_G / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait QUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_E, $80
	wait SEMIQUAVER

	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait QUAVER
	setFrequency NOTE_E, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER

	; 65
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER
	setFrequency NOTE_A, $80
	wait QUAVER

	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER

	wait QUAVER
	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setFrequency NOTE_G * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait QUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_A * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER

	repeat 2
	setFrequency NOTE_G * 2, $80
	wait QUAVER3
	setFrequency NOTE_D * 4, $80
	wait QUAVER3
	setFrequency NOTE_C * 4, $80
	wait QUAVER3
	continue
	setFrequency NOTE_A * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER3
	setFrequency NOTE_A, $80
	wait QUAVER3
	setFrequency NOTE_Bb, $80
	wait QUAVER3
	setFrequency NOTE_G, $80
	wait QUAVER3
	setFrequency NOTE_A, $80
	wait QUAVER3
	setFrequency NOTE_F, $80
	wait QUAVER3

	; 70
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER

	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait QUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_E * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait QUAVER
	setFrequency NOTE_E * 2, $80
	wait QUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_G * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 4, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait QUAVER

	setFrequency NOTE_G / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_A / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_A / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C, $80
	wait SEMIQUAVER
	setFrequency NOTE_F, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_A, $80
	wait SEMIQUAVER
	setFrequency NOTE_Bb, $80
	wait SEMIQUAVER
	setFrequency NOTE_G, $80
	wait SEMIQUAVER
	setFrequency NOTE_C * 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D * 2, $80
	wait SEMIQUAVER

	stopMusic
	jump .loop