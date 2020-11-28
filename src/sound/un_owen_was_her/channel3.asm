SECTION "Music", ROMX[$7500], BANK[1]

musicChan3FlandreTheme::
	setRegisters $80, $40, $40, $00, $00
.loop::
	repeat 2
	setFrequency NOTE_B / 4, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_B / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_E, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait QUAVER
	continue

	; 5
	setFrequency NOTE_G / 4, $80
	wait CROTCHET
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_B / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait QUAVER

	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_B / 2, $80
	wait CROTCHET
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_A_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_A_SHARP, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_D, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_C_SHARP, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_B / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D, $80
	wait CROTCHET
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_E, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_E, $80
	wait QUAVER

	repeat 3
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER

	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	continue

	; 15
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER

	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait CROTCHET

	repeat 4
	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	continue

	; 25
	setFrequency NOTE_B / 4, $80
	wait SEMIBREVE * 2

	setFrequency NOTE_D_SHARP / 2, $80
	wait SEMIBREVE + DOTTED_MINIM
	setFrequency NOTE_D_SHARP / 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait SEMIQUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait SEMIQUAVER
	setFrequency NOTE_C_SHARP / 2, $80
	wait SEMIQUAVER

	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 2, $80
	wait QUAVER

	; 30
	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 2, $80
	wait QUAVER

	setFrequency NOTE_D / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_F_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_F_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER

	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_A_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_A_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_A_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_F_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80; NOTE_B / 8
	wait QUAVER
	setFrequency NOTE_F_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_C_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER

	setFrequency NOTE_D / 4, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 4, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D / 2, $80
	wait DOTTED_QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER

	repeat 2
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER

	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	continue

	repeat 4
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 2, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER

	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_Db / 2, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	continue

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER

	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER
	setFrequency NOTE_Bb / 4, $80
	wait QUAVER
	setFrequency NOTE_F / 2, $80
	wait QUAVER

	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_Db / 4, $80
	wait QUAVER
	setFrequency NOTE_Ab / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_C / 4, $80
	wait CROTCHET

	setVolume $00
	wait MINIM
	setVolume $20

	; 54
	setFrequency NOTE_G / 4, $80
	wait MINIM
	setFrequency NOTE_A / 4, $80
	wait MINIM

	setFrequency NOTE_B / 4, $80
	wait CROTCHET
	setFrequency NOTE_B / 4, $80
	wait CROTCHET
	setFrequency NOTE_G_SHARP / 4, $80
	wait CROTCHET
	setFrequency NOTE_G_SHARP / 4, $80
	wait CROTCHET

	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER

	repeat 2
	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	continue

	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_G_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_G / 4, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_G / 2, $80
	wait QUAVER
	setFrequency NOTE_D / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 4, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER
	setFrequency NOTE_A / 2, $80
	wait QUAVER
	setFrequency NOTE_E / 2, $80
	wait QUAVER

	setFrequency NOTE_B / 4, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_F_SHARP / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setFrequency NOTE_B / 2, $80
	wait QUAVER
	setVolume $40

	stopMusic
	jump .loop