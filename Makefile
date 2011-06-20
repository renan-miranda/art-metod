CC=latex

all: compile convert clean
	@echo "Artigo criado!"
compile:
	@latex artigo.tex
	@bibtex artigo
	@bibtex artigo
	@latex artigo.tex
	@latex artigo.tex
convert:
	@dvipdf artigo.dvi
view: all
	@evince artigo.pdf &
clean:
	@mv *.aux lixo/
	@mv *.dvi lixo/
	@mv *.log lixo/
	@mv *.bbl lixo/
	@mv *.blg lixo/
remove:
	@mv *.pdf lixo/
	@rm -rfv lixo/*
