#!/usr/bin/sh
# mv .\web\index.html .\web\old.html
pandoc -o web/index.html -f markdown+fancy_lists -s '.\Translation Style Guide for Cincinnati Childrens.md' --css  "c:\Users\schzs8\OneDrive - cchmc\Code\StyleGuide\web\css\pandoc.css" -H '.\header.html' --metadata date="`date +%F`"
pandoc -o web/vendor_instructions.html -f markdown+fancy_lists -s '.\vendor_instructions.md' --css  "c:\Users\schzs8\OneDrive - cchmc\Code\StyleGuide\web\css\pandoc.css" -H '.\header.html' --metadata date="`date +%F`"
pandoc -o web/pdfs/CCHMC_Style_Guide.pdf -f markdown+fancy_lists -s '.\Translation Style Guide for Cincinnati Childrens.md' --css "c:\Users\schzs8\OneDrive - cchmc\Code\StyleGuide\web\css\pandoc.css" --pdf-engine=wkhtmltopdf --variable=papersize:letter --metadata date="`date +%F`"
pandoc -o web/pdfs/CCHMC_Vendor_Instructions.pdf -f markdown+fancy_lists -s '.\vendor_instructions.md' --css  "c:\Users\schzs8\OneDrive - cchmc\Code\StyleGuide\web\css\pandoc.css" --pdf-engine=wkhtmltopdf --variable=papersize:letter --metadata date="`date +%F`"
cp web/pdfs/CCHMC_Style_Guide.pdf ~/Dropbox/CCHMC_Style_Guide.pdf
cp web/pdfs/CCHMC_Vendor_Instructions.pdf ~/Dropbox/CCHMC_Vendor_Instructions.pdf
java -jar ~/OneDrive\ -\ cchmc/Programs/daisydiff-1.2/daisydiff.jar web/old.html web/index.html --file=web/diff.html --css=css/pandoc.css
java -jar ~/OneDrive\ -\ cchmc/Programs/daisydiff-1.2/daisydiff.jar web/old_vendor_instructions.html web/vendor_instructions.html --file=web/diff.html --css=css/pandoc.css
surge --project ./web
