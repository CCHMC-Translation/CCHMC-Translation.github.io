cd ~/OneDrive\ -\ cchmc/Code/StyleGuide
# mv .\web\index.html .\web\old.html
pandoc -o web/index.html -f markdown+fancy_lists -s '.\Translation Style Guide for Cincinnati Childrens.md' --css css/pandoc.css
java -jar ~/OneDrive\ -\ cchmc/Programs/daisydiff-1.2/daisydiff.jar web/old.html web/index.html --file=web/diff.html
cd web
echo "Make PDF then run surge."
