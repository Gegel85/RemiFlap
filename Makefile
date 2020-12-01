NAME = remiflap

EXT = gbc

ASM = rgbasm

LD = rgblink

FIX = rgbfix

FIXFLAGS = -Cjsv -k 00 -l 0x33 -m 0x02 -p 0 -r 01 -t "`echo "$(NAME)" | tr a-z A-Z | tr "_" " "`"

ASMFLAGS =

LDFLAGS = -n $(NAME).sym -l $(NAME).link

FXFLAGS = -u

FX = rgbgfx

SRCS = \
	src/main.asm \
	src/mem_layout.asm \
	src/assets.asm \
	src/text.asm \
	src/wram.asm


IMGS = \
	assets/nocgberror.png

COMPRESSED_IMGS = \
	assets/font.png

COLORED_IMGS = \
	assets/remi0d/remi_hat.png \
	assets/remi0d/remi_wing.png \
	assets/remi0d/remilia00.png \
	assets/remi0d/remilia01.png \
	assets/remi0d/remilia11.png \
	assets/remim45d/remi_mouth.png \
	assets/remim45d/remi_hat.png \
	assets/remim45d/remi_wing.png \
	assets/remim45d/remilia.png \
	assets/remi45d/remi_mouth.png \
	assets/remi45d/remi_hat.png \
	assets/remi45d/remi_wing.png \
	assets/remi45d/remilia.png \
	assets/remi70d/remi_mouth.png \
	assets/remi70d/remi_hat.png \
	assets/remi70d/remi_wing.png \
	assets/remi70d/remilia.png \
	assets/rumia/rumia.png \
	assets/rumia/rumia_hair.png \
	assets/rumia/shadow.png \
	assets/rumia/projectile.png \
	assets/flandre/flandre1.png \
	assets/flandre/flandre2.png \
	assets/flandre/flandre3.png \
	assets/flandre/flandre4.png \
	assets/flandre/hair_wings1.png \
	assets/flandre/hair_wings2.png \
	assets/flandre/hair_wings3.png \
	assets/flandre/hair_wings4.png \
	assets/flandre/laevateinn1.png \
	assets/flandre/laevateinn2.png \
	assets/flandre/laevateinn3.png \
	assets/flandre/laevateinn4.png \
	assets/flandre/laevateinn5.png \
	assets/flandre/laevateinn6.png \
	assets/flandre/laevateinn7.png \
	assets/flandre/wing1.png \
	assets/flandre/wing2.png \
	assets/flandre/wing3.png \
	assets/flandre/ribbon.png \
	assets/flandre/bullet.png \
	assets/background.png \
	assets/fire1.png \
	assets/fire2.png \
	assets/numbers1.png \
	assets/numbers2.png \
	assets/main_menu.png \

COMPLEX_COLORED_IMGS =

OPTIMIZED_COLORED_IMGS = \

OBJ_COLORED_IMGS = \

COMPRESSED_COLORED_IMGS =


OBJS = $(SRCS:%.asm=%.o)

IMGSFX = $(IMGS:%.png=%.fx)

COMPRESSEDIMGSFX = $(COMPRESSED_IMGS:%.png=%.zfx)

COLORED_IMGS_FX = $(COLORED_IMGS:%.png=%.cfx)

OPTIMIZED_COLORED_IMGS_FX = $(OPTIMIZED_COLORED_IMGS:%.png=%.ocfx)

COMPLEX_COLORED_IMGS_FX = $(COMPLEX_COLORED_IMGS:%.png=%.ccfx)

OBJ_COLORED_IMGS_FX = $(OBJ_COLORED_IMGS:%.png=%.ofx)

COMPRESSED_COLORED_IMGS_FX = $(COMPRESSED_COLORED_IMGS:%.png=%.zcfx)

PALS = $(COLORED_IMGS:%.png=%.pal) $(COMPRESSED_COLORED_IMGS:%.png=%.pal) $(OBJ_COLORED_IMGS:%.png=%.pal)

MAPS = $(IMGS:%.png=%.tilemap) $(COMPRESSED_IMGS:%.png=%.tilemap) $(COLORED_IMGS:%.png=%.tilemap) $(COMPRESSED_COLORED_IMGS:%.png=%.tilemap) $(OBJ_COLORED_IMGS:%.png=%.tilemap)

all:	tools/compressor tools/fixObjPals tools/gbc_converter $(NAME).$(EXT)

tools/compressor:
	$(MAKE) -C tools compressor

tools/fixObjPals:
	$(MAKE) -C tools fixObjPals

tools/gbc_converter:
	$(MAKE) -C tools gbc_converter

run:	re
	wine "$(BGB_PATH)" ./$(NAME).gbc

runw:	re
	"$(BGB_PATH)" ./$(NAME).gbc

%.fx : %.png
	$(FX) $(FXFLAGS) -T -o $@ $<

%.cfx : %.png
	$(FX) $(FXFLAGS) -T -P -o $@ $<

%.ofx : %.png
	$(FX) $(FXFLAGS) -T -P -o $(@:%.ofx=%.ofo) $<
	tools/fixObjPals $(@:%.ofx=%.pal) $(@:%.ofx=%.ofo)
	rm -f $(@:%.ofx=%.ofo)

%.zfx : %.png
	$(FX) $(FXFLAGS) -T -o $@ $<
	tools/compressor $@

%.ccfx : %.png
	tools/gbc_converter $< $@ $(@:%.ccfx=%.pal) $(@:%.ccfx=%.attrmap) $(@:%.ccfx=%.tilemap)

%.zcfx : %.png
	$(FX) $(FXFLAGS) -T -P -o $@ $<
	tools/palette_fixer $(@:%.zcfx=%.pal)
	tools/compressor $@

%.o : %.asm
	$(ASM) -o $@ $(ASMFLAGS) $<

$(NAME).$(EXT): $(COLORED_IMGS_FX) $(COMPRESSED_COLORED_IMGS_FX) $(OBJ_COLORED_IMGS_FX) $(COMPRESSEDIMGSFX) $(IMGSFX) $(OBJ_COLORED_IMGS_FX) $(COMPLEX_COLORED_IMGS_FX) $(OPTIMIZED_COLORED_IMGS_FX) $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)
	$(FIX) $(FIXFLAGS) $@

clean:
	$(MAKE) -C tools clean
	$(RM) $(OBJS) $(IMGSFX) $(COMPRESSEDIMGSFX) $(COLORED_IMGS_FX) $(COMPRESSED_COLORED_IMGS_FX) $(MAPS) $(PALS) $(OBJ_COLORED_IMGS_FX) $(OBJ_COLORED_IMGS:%.png=%.ofo) $(COMPLEX_COLORED_IMGS_FX) $(COMPLEX_COLORED_IMGS_FX:%.ccfx=%.pal) $(COMPLEX_COLORED_IMGS_FX:%.ccfx=%.attrmap) $(COMPLEX_COLORED_IMGS_FX:%.ccfx=%.tilemap)

fclean:	clean
	$(MAKE) -C tools fclean
	$(RM) $(NAME).$(EXT)

re:	fclean all
