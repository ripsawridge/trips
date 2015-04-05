
quicksilver-book.pdf: quicksilver-book.tex environment-book.tex stage0/stage0.tex stage1/stage1.tex stage2/stage2.tex stage3/stage3.tex stage4/stage4.tex stage5/stage5.tex
	context quicksilver-book.tex

all: quicksilver-book.pdf

sweep:
	rm -f *.mp *.log *.tmp *.tui *.tuo *.dvi

clean: sweep
	rm -f *.pdf

