#!/bin/bash

echo "Moving to JSFSCAN"
echo -e "\n"
echo -e "\n"
echo "---------------------------------------------------------------------------"
cd ~/tools/JSFScan.sh

bash JSFScan.sh -l $1 -e -s -m -o ~/recon/$1_jsscan.txt

echo "-------------------Run all Js links through JSparser------------------------"
echo "---------------------------- In port :8008 ----------------------------------"
