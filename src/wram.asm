SECTION "RAM", WRAM0

include "src/sound/constants.asm"

randomRegister::
	ds $1

frameCounter::
	ds $1

playingMusics::
playingMusic1::
	ds MUSIC_STRUCT_SIZE
playingMusic2::
	ds MUSIC_STRUCT_SIZE
playingMusic3::
	ds MUSIC_STRUCT_SIZE
playingMusic4::
	ds MUSIC_STRUCT_SIZE

playingSfxTimers::
playingSfx1Timer::
	ds $1
playingSfx2Timer::
	ds $1
playingSfx3Timer::
	ds $1
playingSfx4Timer::
	ds $1

nbRepeated::
	ds $1

playerPos::
	ds $1
playerSpeed::
	ds $1

SECTION "OAM", WRAMX[$DE00]
oamSrc::
	ds $A0

stackMax::
	ds $E000 - stackMax