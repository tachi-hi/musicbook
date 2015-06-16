
LATEX=platex

all:
	lilypond-book --latex-program=$(LATEX) --output out music.tex 
	cd out; cp music.tex music2.tex; nkf -e music2.tex > music.tex; $(LATEX) music.tex;
	cd out; dvipdf music;
	cp ./out/music.pdf .

clean:
	rm -rf out
	rm music.pdf
