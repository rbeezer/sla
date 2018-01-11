#!/usr/bin/env python3
# This tests if the .ipynb notebooks are valid
import os
import sys
from nbformat import validate
import glob
import json

curdir = os.path.dirname(os.path.abspath(__file__))
os.chdir(curdir)

fail = False
for ipynb in glob.iglob('**/*.ipynb', recursive=True):
    fn = os.path.join(curdir, ipynb)
    try:
        data = json.load(open(fn, 'r'))
        validate(data)
    except:
        print("validation failed: {}".format(ipynb))
        fail = True
if fail:
    sys.exit(1)
else:
    sys.exit(0)


