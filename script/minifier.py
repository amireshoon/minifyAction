#!/usr/bin/env python3

import sys

def single_file(path):
    print("doning on --> ", path)

def all_files():
    print('doing on everything')

try:
    path = sys.argv[1]
    single_file(path)
except:
    all_files()

print("Running on --> ", path)
