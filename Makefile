.PHONY: build run

.SUFFIXES:


all:
	@echo "make clean -- cleans cv build"
	@echo "make setup -- setups tex enviorment"
	@echo "make cv    -- builds cv"

clean:
	rm -rf cv.aux cv.log cv.pdf

setup:
	sudo tlmgr update --self
	sudo tlmgr install datetime fmtcount background everypage titlesec enumitem

cv: clean
	xelatex cv.tex

