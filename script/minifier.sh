#!/bin/sh

# Creating workspace
mkdir github && cd github
git clone https://github.com/$1.git workspace
cd workspace

# Getting all css files in project
CSS=$(find . -type f -name "*.css")
# Getting all js files in project
JS=$(find . -type f -name "*.js")

# For counting all files that minified
ITEMS=0
for c in $CSS
do
# Sending path to minifier.py
minifier $c
# Counting this files in items
ITEMS=$(($ITEMS + 1))
done

for j in $JS
do
# Sending path to minifier.py
minifier $j
# Counting this files in items
ITEMS=$(($ITEMS + 1))
done

echo "Minified $ITEMS files"