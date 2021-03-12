#!/bin/sh
echo $1
echo $2
mkdir github && cd github
git clone https://github.com/$2.git workspace
cd workspace
ls

CSS=$(find . -type f -name "*.css")
JS=$(find . -type f -name "*.js")

ITEMS=0
for c in $CSS
do
minifier $c
ITEMS=$(($ITEMS + 1))
done

for j in $JS
do
minifier $j
ITEMS=$(($ITEMS + 1))
done

echo "Minified $ITEMS files"

# git config --global user.name 'MinifyActionbot'
# git config --global user.email '<abtin.yas53@gmail.com>'
# git status
# git switch -c $1
# git add -A
# git commit -m "Minified css, js and html"
# git push origin $1

git config user.name "$(git --no-pager log --format=format:'%an' -n 1)"
git config user.email "$(git --no-pager log --format=format:'%ae' -n 1)"
cd github/workspace
git status
git switch -c $1
git add -A
git commit -m "Minified css, js and html"
git push origin $1