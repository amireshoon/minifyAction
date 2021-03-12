#!/usr/bin/env python3

import sys

def single_file(path):
    print("doning on --> ", path)
    import os
    file_name, file_ext = os.path.splitext(path)
    if file_ext == '.js':
        do_js(path)
    if file_ext == '.css':
        do_css(path)
    if file_ext == '.html' or file_ext == '.htm':
        do_html(path)

def all_files():
    print('doing on everything')

def do_js(path):
    from css_html_js_minify import process_single_js_file, js_minify
    process_single_js_file(path, overwrite=True)

def do_css(path):
    from css_html_js_minify import process_single_css_file, css_minify
    process_single_css_file(path, overwrite=True)

def do_html(path):
    from css_html_js_minify import process_single_html_file, html_minify
    process_single_html_file(path, overwrite=True)

try:
    path = sys.argv[1]
    single_file(path)
    print("Running on --> ", path)
except:
    # all_files()
    print('Something is happening')
