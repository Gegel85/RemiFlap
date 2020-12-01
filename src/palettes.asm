remiliaPal::
	incbin "assets/remi0d/remi_hat.pal"
	incbin "assets/remi0d/remilia11.pal"
	incbin "assets/remi0d/remi_wing.pal"

backgroundPal::
	incbin "assets/background.pal"

darkFirePal::
	dw $0000, $2000, $4108, $7E10
	dw $0000, $0800, $1442, $28A5
firePal::
	incbin "assets/fire1.pal"
	;dw $3DEF, $018F, $00CF, $000F
	dw $1CE7, $00C7, $0067, $0007
mainMenuBgPal::
	incbin "assets/main_menu.pal"
monochromePal::
	dw $7FFF, $2108, $4210, $0000

rumiaPal::
	incbin "assets/rumia/rumia.pal"
	incbin "assets/rumia/rumia_hair.pal"
	incbin "assets/rumia/shadow.pal"

flandrePal::
	incbin "assets/flandre/flandre1.pal"
	incbin "assets/flandre/hair_wings1.pal"
	incbin "assets/flandre/laevateinn6.pal"
	incbin "assets/flandre/wing1.pal"