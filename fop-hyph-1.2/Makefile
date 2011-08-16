
JAR_DIR=$(DESTDIR)/usr/share/java

all: fop-hyph.jar

clean:
	rm -f fop-hyph.jar offo-hyphenation-fop-stable.zip

install: fop-hyph.jar
	echo "DESTDIR=$(DESTDIR)"
	env
	mkdir -p $(JAR_DIR)
	install fop-hyph.jar $(JAR_DIR)/fop-hyph-1.2.jar
	ln -s /usr/share/java/fop-hyph-1.2.jar $(JAR_DIR)/fop-hyph.jar
	
fop-hyph.jar: offo-hyphenation-fop-stable.zip
	unzip -p offo-hyphenation-fop-stable.zip offo-hyphenation-fop-stable/fop-hyph.jar > fop-hyph.jar

offo-hyphenation-fop-stable.zip:
	wget http://sourceforge.net/projects/offo/files/offo-hyphenation/1.2/offo-hyphenation-fop-stable_v1.2.zip/download -O offo-hyphenation-fop-stable.zip

.PHONY: all clean install

