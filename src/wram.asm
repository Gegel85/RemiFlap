SECTION "RAM", WRAM0

include "src/sound/constants.asm"

randomRegister::
	ds $1
frameCounter::
	ds $1
keysDisabled::
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

fireColumnHoleSize::
	ds $1

VBLANKRegister::
	ds $1

currentStage::
	ds $1

bossPos::
	ds $2

mainMenuArrowAnimationCounter::
playerPos::
	ds $1
playerSpeed::
	ds $1
fireAnimationCounter::
	ds $1
fireColumnNextColumnAddr::
	ds $2
fireGenerationCounter::
	ds $1
fireColumnsIndex::
	ds $1
fireColumns::
	ds $8
score::
	ds $2
bossAnimationRegisters::
	ds $2
bossHp::
	ds $1
bossHpDrainCounter::
	ds $1
bossHpDrainCounterMax::
	ds $1
bossAttackCounter::
	ds $1
bossAttack::
	ds $1
bossAttackAnimCounter::
	ds $1
rumiaTotalMoveY::
	ds $1
nbOfProjectilesToShoot::
	ds $1
nbOfProjectiles::
	ds $1
shootCounter::
	ds $1
projectiles::
	; SPEED (2)
	; COUNTER (2)
	; MAX COUNTER (2)
	; POS (2)
	ds $8 * 32
gotHit::
	ds $1
flandreClones::
	ds $2 * 3
endBossRegisters::
displayRegister::
	ds $1
lines::
	ds $2
scrollBackup::
	ds $1
lineTimer::
	ds $1

SECTION "AUDIO_REGISTERS_MIRROR", WRAM0[$C410]
Channel1Mirror::
	ds $6
Channel2Mirror::
	ds $4
Channel3Mirror::
	ds $6
Channel4Mirror::
	ds $4
APUParamsMirror::
	ds $3

SECTION "OAM", WRAM0[$C500]
oamSrc::
	ds $A0

stackTop::
	ds $C800 - stackTop
stackBottom::

SECTION "VRAM_MAP_SRC", WRAM0[$C800]
VRAMBgMirror::
	ds $400
VRAMBg1Mirror::
	ds $400
