#!/bin/sh
echo $1
echo $2
mkdir github && cd github
git clone https://github.com/$2.git workspace
cd workspace
ls

CSS=$(find . -type f -name "*.css")
JS=$(find . -type f -name "*.js")

for c in $CSS
do
echo "doint css -> $c"
# minifier $f
done

for j in $JS
do
echo "doint js -> $j"
# minifier $f
done