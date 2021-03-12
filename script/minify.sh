#!/bin/sh

# installing needed packages
pip install css-html-js-minify

# placing minifier in path
sudo cp minifier.py /usr/local/bin
sudo mv /usr/local/bin/minifier.py /usr/local/bin/minifier

sudo cp minifier.sh /usr/local/bin
# sudo mv /usr/local/bin/minifier.sh /usr/local/bin/minifierbash

# making executable
sudo chmod +x /usr/local/bin/minifier
sudo chmod +x /usr/local/bin/minifier.sh

# exporting to path
export PATH=$PATH:/usr/local/bin/minifier

export PATH=$PATH:/usr/local/bin/minifier.sh

echo "MinifyAcion is ready"