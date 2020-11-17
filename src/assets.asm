SECTION "Assets", ROMX[$4000], BANK[1]

remiliaSprite::
	incbin "assets/remi_hat.cfx"
	incbin "assets/remilia00.cfx"
	incbin "assets/remilia01.cfx"
	incbin "assets/remilia11.cfx"
	incbin "assets/remi_wing.cfx"

fireSprite1::
	incbin "assets/fire1.cfx"
fireSprite2::
	incbin "assets/fire2.cfx"

noCGBScreen::
	incbin "assets/nocgberror.fx"
noCGBScreenMap::
	incbin "assets/nocgberror.tilemap"

background::
	incbin "assets/background.cfx"
backgroundMap::
	incbin "assets/background.tilemap"

include "src/palettes.asm"