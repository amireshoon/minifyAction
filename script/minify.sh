#!/bin/sh

# installing needed packages
pip install css-html-js-minify

# placing minifier in path
sudo cp minifier.py /usr/local/bin
sudo mv /usr/local/bin/minifier.py /usr/local/bin/minifier

# making executable
sudo chmod +x /usr/local/bin/minifier

# exporting to path
export PATH=$PATH:/usr/local/bin/minifier

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