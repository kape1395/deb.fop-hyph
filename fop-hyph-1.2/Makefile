
all: fop-hyph.jar

clean:
	rm fop-hyph.jar offo-hyphenation-fop-stable.zip

fop-hyph.jar: offo-hyphenation-fop-stable.zip
	unzip -p offo-hyphenation-fop-stable.zip offo-hyphenation-fop-stable/fop-hyph.jar > fop-hyph.jar

offo-hyphenation-fop-stable.zip:
	wget http://sourceforge.net/projects/offo/files/offo-hyphenation/1.2/offo-hyphenation-fop-stable_v1.2.zip/download -O offo-hyphenation-fop-stable.zip

.PHONY: all clean

