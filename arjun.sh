#!/bin/bash

cd ~/tools/Arjun/

python3 arjun.py -u $1 -o $1.json --get -t 15

firefox $1.json

