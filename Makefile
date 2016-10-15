R=~/Documents/stat159/stat159-fall2016-hw03/

all: eda-output regression report

data:
	cd data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

report: $(DIR)report/report.Rmd $(DIR)data/regression.Rdata $(DIR)images/histogram-sales.png $(DIR)images/histogram-newspaper.png
	cd report; Rscript -e 'library(rmarkdown); rmarkdown::render("report.Rmd", "pdf_document")'

eda-output: $(DIR)code/scripts/eda-script.R $(DIR)data/Advertising.csv
	cd code/scripts; Rscript eda-script.R

regression: $(DIR)code/regression-script.R $(DIR)data/Advertising.csv
	cd code; Rscript regression-script.R

tests:
	cd code; Rscript test-that.R

clean: 
	cd report; rm report.pdf
