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
    else:
        print("valid ipynb: {}".format(ipynb))
if fail:
    print("TESTS FAILED")
    sys.exit(1)
else:
    print("TESTS PASS")
    sys.exit(0)


