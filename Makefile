INSTALL_DIR?=~/texmf/web2c

.PHONY : install clean cleanall

prelude.fmt : prelude.ini
	lualatex --ini "&lualatex" $<

install : prelude.fmt
	install -D $< $(INSTALL_DIR)/f1rstlady/$<

clean :
	rm *.log

cleanall : clean
	rm *.fmt $(INSTALL_DIR)/f1rstlady/*.fmt
