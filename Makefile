INSTALL_DIR?=~/texmf/web2c

.PHONY : install clean cleanall

prelude.fmt : prelude.ini
	lualatex -ini -recorder -shell-escape "&lualatex" $<

install : prelude.fmt prelude.fls
	install -m 644 -Dt $(INSTALL_DIR)/f1rstlady/ $^

clean :
	@rm -f *.log

cleanall : clean
	rm -f *.{fmt,fls} $(INSTALL_DIR)/f1rstlady/*.{fmt,fls}
