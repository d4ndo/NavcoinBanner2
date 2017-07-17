SVGFILES := $(wildcard *.svg)
PNGFILES := $(wildcard *.png)

all: $(SVGFILES:%.svg=%.jpg)

%.png : %.svg
	inkscape -C -e $*.png $*.svg

%.jpg : %.png
	mogrify -quality 100% -format jpg *.png

clean:
	@rm -f *.png *.jpg
