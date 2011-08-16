
all: fop-hyph-1.2.tar.gz fop-hyph_1.2.orig.tar.gz
	@echo "#\n# (cd fop-hyph-1.2 && dpkg-buildpackage -rfakeroot)\n#"

clean:
	rm -f fop-hyph-1.2.tar.gz fop-hyph_1.2.orig.tar.gz
	rm -f fop-hyph_1.2-*.debian.tar.gz fop-hyph_1.2-*.dsc fop-hyph_1.2-*_all.deb fop-hyph_1.2-*_i386.changes
	make -C fop-hyph-1.2 clean


fop-hyph-1.2.tar.gz: fop-hyph-1.2/Makefile
	tar -czf fop-hyph-1.2.tar.gz fop-hyph-1.2/Makefile fop-hyph-1.2/README

fop-hyph_1.2.orig.tar.gz: fop-hyph-1.2.tar.gz
	cp fop-hyph-1.2.tar.gz fop-hyph_1.2.orig.tar.gz
