#!/bin/sh

# installing needed packages
pip install css-html-js-minify

# placing minifier in path
sudo cp minifier.py /usr/local/bin
sudo mv /usr/local/bin/minifier.py /usr/local/bin/minifier

# making executable
sudo chmod +x /usr/local/bin/minifier
sudo chmod u+rx minifier.sh

# exporting to path
export PATH=$PATH:/usr/local/bin/minifier

echo "MinifyAcion is ready"