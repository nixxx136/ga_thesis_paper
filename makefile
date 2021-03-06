target = UMDCS_MSThesis
all: open

open: build
	open $(target).pdf &

build:
	xelatex $(target) # (this will generate a document with question marks in place of unknown references)
#	Uncomment the following if you are using support .bib files
	biber $(target) # (this will parse all the .bib files that were included in the article and generate metainformation regarding references)
	xelatex $(target) # (this will generate document with all the references in the correct places)
	xelatex $(target) # (just in case if adding references broke page numbering somewhere)

clean:
	rm *.aux *.bbl *.log *.out *.run.xml *.toc *.bcf *.blg *.lof *.lot
