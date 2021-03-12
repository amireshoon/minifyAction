#!/usr/bin/env python3

import sys

def single_file(path):
    # print(":)")

def all_files():
    # print('')

try:
    path = sys.argv[1]
    single_file(path)
except:
    all_files()

print("Running on", path)
