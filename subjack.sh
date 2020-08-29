#!/bin/bash

subjack -w $1 -t 100 -timeout 30 -o $1_takeover.txt -ssl

mv $1_takeover.txt ~/recon
