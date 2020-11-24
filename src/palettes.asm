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