all: slides.pdf handout.pdf

slides.pdf: slides.md
	pandoc -t beamer -s slides.md -o slides.pdf --highlight-style=tango

handout.pdf: slides.pdf
	pdfnup --a4paper --keepinfo --nup 2x4 --frame true --scale 0.97 \
	    --no-landscape --outfile handout.pdf slides.pdf
