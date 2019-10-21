
.PHONY : all pdf html ingest clean

all : pdf html docs/powerbi-files.zip

pdf :
	cd book ; Rscript -e "bookdown::render_book('.', 'bookdown::pdf_book')"

html :
	cd book ; Rscript -e "bookdown::render_book('.', 'bookdown::gitbook')"
	cp -R book/figures docs

docs/powerbi-files.zip : powerbi-files/*
	zip -FSr docs/powerbi-files.zip powerbi-files

clean :
	rm -rf docs/*
