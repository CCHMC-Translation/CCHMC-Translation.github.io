#!/usr/bin/sh
# mv .\web\index.html .\web\old.html
pandoc -o web/index.html -f markdown+fancy_lists -s '.\Translation Style Guide for Cincinnati Childrens.md' --css css/pandoc.css
pandoc -o web/pdfs/CCHMC_Style_Guide.pdf -f markdown+fancy_lists -s '.\Translation Style Guide for Cincinnati Childrens.md' --css ~/OneDrive\ -\ cchmc/Code/StyleGuide/web/css/pandoc.css --pdf-engine=wkhtmltopdf --variable=papersize:letter
java -jar ~/OneDrive\ -\ cchmc/Programs/daisydiff-1.2/daisydiff.jar web/old.html web/index.html --file=web/diff.html
surge --project ./web
