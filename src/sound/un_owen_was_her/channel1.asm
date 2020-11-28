musicChan1FlandreTheme::
	setRegisters $00, $46, $F3, $00, $00
.loop::
	repeat 4
	wait DOTTED_MINIM
	setVolume $F3
	setFrequency NOTE_E, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait QUAVER
	setVolume $00

	wait DOTTED_MINIM
	setVolume $F3
	setFrequency NOTE_G, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_G, $80
	wait QUAVER
	setVolume $00
	continue

	wait SEMIBREVE * 2

	setVolume $F3
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait CROTCHET

	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET

	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_Bb / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_Db * 2, $80
	wait CROTCHET

	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_Db, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_C / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_E * 2, $80
	wait CROTCHET

	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_Bb / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_Db * 2, $80
	wait QUAVER

	setFrequency NOTE_Ab, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_E, $80
	wait CROTCHET
	setVolume $83
	setFrequency NOTE_C / 2, $80
	wait CROTCHET

	setVolume $F3
	repeat 2
	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET

	setFrequency NOTE_B, $80
	wait CROTCHET
	setFrequency NOTE_C_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET

	setFrequency NOTE_F_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait QUAVER
	setFrequency NOTE_B * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_C_SHARP * 2, $80
	wait CROTCHET
	setFrequency NOTE_B, $80
	wait MINIM

	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET

	setFrequency NOTE_B, $80
	wait CROTCHET
	setFrequency NOTE_C_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET

	setFrequency NOTE_F_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait QUAVER
	setFrequency NOTE_B * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_F_SHARP * 2, $80
	wait SEMIBREVE
	continue

	setVolume $83
	setFrequency NOTE_F_SHARP / 2, $80
	wait SEMIBREVE
	setFrequency NOTE_F_SHARP / 2, $80
	wait SEMIBREVE

	setFrequency NOTE_A_SHARP / 2, $80
	wait SEMIBREVE
	setFrequency NOTE_A_SHARP / 2, $80
	wait SEMIBREVE

	wait SEMIBREVE * 4

	setFrequency NOTE_B / 4, $80
	wait MINIM
	setFrequency NOTE_C_SHARP / 2, $80
	wait MINIM

	setFrequency NOTE_D_SHARP / 2, $80
	wait MINIM
	setFrequency NOTE_D_SHARP / 2, $80
	wait MINIM

	setFrequency NOTE_B / 4, $80
	wait MINIM
	setFrequency NOTE_C_SHARP / 2, $80
	wait MINIM

	setFrequency NOTE_D / 2, $80
	wait MINIM
	setFrequency NOTE_D_SHARP / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait QUAVER

	setFrequency NOTE_D, $80
	wait MINIM
	setFrequency NOTE_Db, $80
	wait MINIM

	setFrequency NOTE_F, $80
	wait MINIM
	setFrequency NOTE_E, $80
	wait MINIM

	wait QUAVER
	setVolume $F3
	repeat 5
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait CROTCHET

	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET
	continue

	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_Bb / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_Db * 2, $80
	wait CROTCHET

	setFrequency NOTE_F * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_Db, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_F * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_C / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_E * 2, $80
	wait CROTCHET

	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setVolume $83
	setFrequency NOTE_Bb / 2, $80
	wait QUAVER
	setVolume $F3
	setFrequency NOTE_Db * 2, $80
	wait QUAVER

	setFrequency NOTE_Ab, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_F, $80
	wait QUAVER
	setFrequency NOTE_Db * 2, $80
	wait QUAVER
	setFrequency NOTE_E, $80
	wait CROTCHET
	setVolume $83
	setFrequency NOTE_C / 2, $80
	wait CROTCHET

	repeat 2
	wait MINIM
	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET

	setFrequency NOTE_B, $80
	wait CROTCHET
	setFrequency NOTE_C_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET

	setFrequency NOTE_F_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait QUAVER
	setFrequency NOTE_B * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_C_SHARP * 2, $80
	wait CROTCHET
	setFrequency NOTE_B, $80
	wait MINIM

	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait CROTCHET

	setFrequency NOTE_B, $80
	wait CROTCHET
	setFrequency NOTE_C_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP * 2, $80
	wait CROTCHET
	setFrequency NOTE_E * 2, $80
	wait CROTCHET

	setFrequency NOTE_F_SHARP * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait QUAVER
	setFrequency NOTE_B * 2, $80
	wait QUAVER
	setFrequency NOTE_A * 2, $80
	wait CROTCHET
	setFrequency NOTE_D * 2, $80
	wait QUAVER
	setFrequency NOTE_D * 2, $80
	wait QUAVER

	setFrequency NOTE_F_SHARP * 2, $80
	wait MINIM
	continue

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER


	setVolume $F3
	stopMusic
	jump .loop