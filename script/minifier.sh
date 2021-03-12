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

# git config user.name "amireshoon"
# git config user.email "abtin.yas53@gmail.com"
# cd github/workspace
# git status
# git switch -c $1
# git add -A
# git commit -m "Minified css, js and html"
# git push "https://$4:$3@github.com/$2.git" $1



# set -e

# timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

# INPUT_AUTHOR_EMAIL='github-actions[bot]@users.noreply.github.com'
# INPUT_AUTHOR_NAME='github-actions[bot]'

# REPOSITORY=$2
# git switch -c $1
# echo "Push to branch $1";
# [ -z "$3" ] && {
#     echo 'Missing input "github_token: ${{ secrets.GITHUB_TOKEN }}".';
#     exit 1;
# };

# cd github/workspace

# remote_repo="https://$4:$3@github.com/$2.git"

# git config http.sslVerify false
# git config --local user.email "${INPUT_AUTHOR_EMAIL}"
# git config --local user.name "${INPUT_AUTHOR_NAME}"

# git add -A

# git commit -m "minified"
# git push "${remote_repo}" HEAD:"$1";