CGB_A_INIT EQU $11 ; Accumulator starting value on a Gameboy Color

DMA_DELAY EQU $28

;Interrupts
VBLANK_INTERRUPT = 1 << 0
STAT_INTERRUPT   = 1 << 1
TIMER_INTERRUPT  = 1 << 2
SERIAL_INTERRUPT = 1 << 3
JOYPAD_INTERRUPT = 1 << 4

; Keys
RIGHT_BIT  = 0
LEFT_BIT   = 1
UP_BIT     = 2
DOWN_BIT   = 3
A_BIT      = 4
B_BIT      = 5
SELECT_BIT = 6
START_BIT  = 7