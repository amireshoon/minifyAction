#!/usr/bin/env python3

import sys
import subprocess


print("Working :)")

def single_file(path):
    subprocess.call("./minifier.sh", shell=True)
    print(":)")

def all_files():
    print(output)

try:
    path = sys.argv[1]
    single_file(path)
except:
    all_files()


# print(path)
import os 
my_list = os.listdir('.')
print(my_list)