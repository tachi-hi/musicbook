
all:
	lilypond-book --latex-program=platex --output out music.tex 
	cd out; cp music.tex music2.tex; nkf -e music2.tex > music.tex; platex music.tex;
	cd out; dvipdf music;
	cp ./out/music.pdf .

