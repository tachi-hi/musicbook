
all:
	lilypond-book --latex-program=platex --output out music.tex 
	cd out; platex music.tex;
	cd out; dvipdf music;
	cp ./out/music.pdf .

