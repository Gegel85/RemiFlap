SECTION "Assets", ROMX[$4000], BANK[1]

remiliaSprite::
	incbin "assets/remi0d/remi_hat.cfx"
	incbin "assets/remi0d/remilia00.cfx"
	incbin "assets/remi0d/remilia01.cfx"
	incbin "assets/remi0d/remilia11.cfx"
	incbin "assets/remi0d/remi_wing.cfx"
	ds $10
	ds $10
	ds $10
	incbin "assets/remi45d/remi_hat.cfx"
	incbin "assets/remi45d/remi_wing.cfx"
	incbin "assets/remi45d/remi_mouth.cfx"
	incbin "assets/remi45d/remilia.cfx"
	ds $10
	incbin "assets/remi70d/remi_hat.cfx"
	incbin "assets/remi70d/remi_wing.cfx"
	incbin "assets/remi70d/remi_mouth.cfx"
	incbin "assets/remi70d/remilia.cfx"
	ds $10
	incbin "assets/remim45d/remi_hat.cfx"
	incbin "assets/remim45d/remi_wing.cfx"
	incbin "assets/remim45d/remi_mouth.cfx"
	incbin "assets/remim45d/remilia.cfx"
	ds $10


fireSprite1::
	incbin "assets/fire1.cfx"
fireSprite2::
	incbin "assets/fire2.cfx"

noCGBScreen::
	incbin "assets/nocgberror.fx"
noCGBScreenMap::
	incbin "assets/nocgberror.tilemap"

SECTION "Bg", ROMX[$56B0], BANK[1]
background::
	incbin "assets/background.cfx"
backgroundMap::
	incbin "assets/background.tilemap"

include "src/palettes.asm"