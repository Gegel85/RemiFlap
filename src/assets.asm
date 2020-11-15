SECTION "Assets", ROMX[$4000], BANK[1]

noCGBScreen::
	incbin "assets/nocgberror.fx"
noCGBScreenMap::
	incbin "assets/nocgberror.tilemap"

background::
	incbin "assets/background.cfx"
backgroundMap::
	incbin "assets/background.tilemap"

remiliaSprite::
	incbin "assets/remi_hat.cfx"
	incbin "assets/remilia00.cfx"
	incbin "assets/remilia01.cfx"
	incbin "assets/remilia11.cfx"
	incbin "assets/remi_wing.cfx"


include "src/palettes.asm"