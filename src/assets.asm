SECTION "Bg", ROMX[$4000], BANK[2]
background::
	incbin "assets/background.cfx"
mainMenuBg::
	incbin "assets/main_menu.cfx"

noCGBScreen::
	incbin "assets/nocgberror.fx"
noCGBScreenMap::
	incbin "assets/nocgberror.tilemap"

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
numbers1::
	incbin "assets/numbers1.cfx"
fireSprite2::
	incbin "assets/fire2.cfx"
numbers2::
	incbin "assets/numbers2.cfx"

rumia::
	incbin "assets/rumia/rumia.cfx"
	incbin "assets/rumia/rumia_hair.cfx"
	incbin "assets/rumia/shadow.cfx"
	incbin "assets/rumia/projectile.cfx"

flandre::
	incbin "assets/flandre/flandre1.cfx"
	incbin "assets/flandre/hair_wings1.cfx"
	incbin "assets/flandre/laevateinn1.cfx"
	incbin "assets/flandre/bullet.cfx"
	incbin "assets/flandre/wing1.cfx"

flanLookDown::
	incbin "assets/flandre/flandre3.cfx"
	incbin "assets/flandre/hair_wings3.cfx"
	incbin "assets/flandre/wing2.cfx"
	incbin "assets/flandre/ribbon.cfx"
	incbin "assets/flandre/laevateinn7.cfx"

flanLookUp::
	incbin "assets/flandre/flandre4.cfx"
	incbin "assets/flandre/hair_wings4.cfx"
	incbin "assets/flandre/wing3.cfx"
	incbin "assets/flandre/ribbon.cfx"
	incbin "assets/flandre/laevateinn7.cfx"

altFlanPos::
	incbin "assets/flandre/flandre2.cfx"
	incbin "assets/flandre/hair_wings2.cfx"
	incbin "assets/flandre/laevateinn2.cfx"

altLaevateinns::
	incbin "assets/flandre/laevateinn2.cfx"
	incbin "assets/flandre/laevateinn3.cfx"
	incbin "assets/flandre/laevateinn4.cfx"
	incbin "assets/flandre/laevateinn5.cfx"
biggestAltLaevateinns::
	incbin "assets/flandre/laevateinn6.cfx"

font::
	incbin "assets/font.zfx"

backgroundMap::
	incbin "assets/background.tilemap"
mainMenuBgMap::
	incbin "assets/main_menu.tilemap"

include "src/palettes.asm"