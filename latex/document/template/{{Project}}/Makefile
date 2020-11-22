all: main.pdf

main.pdf: main.tex
	latexmk $(PREVIEW_CONTINUOUSLY) -use-make main.tex

.PHONY: watch
watch: PREVIEW_CONTINUOUSLY=-pvc
watch: main.pdf

.PHONY: clean
clean:
	latexmk -CA -bibtex
	-rm main.run.xml
	-rm texput.fls
