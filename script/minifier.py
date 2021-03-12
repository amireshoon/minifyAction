#!/usr/bin/env python3

import sys

def single_file(path):
    print("doning on --> ", path)
    from css_html_js_minify import process_single_html_file, process_single_js_file, process_single_css_file, html_minify, js_minify, css_minify
    process_single_css_file(path, overwrite=False)

def all_files():
    print('doing on everything')

try:
    path = sys.argv[1]
    single_file(path)
    print("Running on --> ", path)
except:
    # all_files()
    print('Something is happening')
