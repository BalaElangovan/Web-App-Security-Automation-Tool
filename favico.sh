#!/bin/bash

echo "Moving to Favfreak"
echo -e "\n"
echo -e "\n"
echo "---------------------------------------------------------------------------"

cd ~/tools/FavFreak

cat $1 | python3 favfreak.py -o $1_favico.txt
mv $1_favico.txt ~/recon

echo -e "\n"
echo -e "\n"
echo "---------------------------------------------------------------------------"
