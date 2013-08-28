busybox-mips: .mips-stamp

.mips-stamp:
	cp src/config.mips src/.config || exit 1
	make -C src install || exit 1
	cp -a src/toolkit .
	touch $@

	
	
src-clean:
	make -C src clean

clean: src-clean this-clean

this-clean:
	-rm -rf toolkit
	-rm -f .*stamp


distclean: this-clean
	-rm -rf src/toolkit
	make -C src $@
