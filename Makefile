main: vlna exercises
	arara main.tex

vlna:
	vlna -l -m -n main.tex
	vlna -l -m -n abstract_{en,cs}.tex
	vlna -l -m -n acknowledgements.tex
	vlna -l -m -n chapters/*.tex

exercises:
	vlna -l -m -n exercises.tex
	pdflatex exercises.tex
