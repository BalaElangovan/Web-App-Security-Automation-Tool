#!/bin/bash

mkdir ~/recon/$1


echo -e "\n"
echo -e "\n"
echo "Running Amass.. Seems Struck but its running.!"
echo "-------------------------------------------------------------------------"
amass enum -passive -d $1 -o $1.txt
echo -e "\n"
echo -e "\n"
echo "-------------------------------------------------------------------------"
echo -e "\n"
echo -e "\n"



subfinder -d $1 >> $1.txt
cat $1.txt | sort -u >> $1.txt
cat $1.txt |  httpx  -silent  > $1_resolved.txt
echo -e "\n"
echo -e "\n"
echo "--------------------------------------------------------------------------" 
echo -e "\n"
echo -e "\n"


echo "Creating and moving files to the directory"
echo "-------------------------------------------------------------------------"
echo -e "\n"
echo -e "\n"

cp $1_resolved.txt ~/tools/nuclei
cp $1_resolved.txt ~/tools/JSFScan.sh
cp $1_resolved.txt ~/tools/FavFreak
cp $1.txt ~/waybackandgf

echo "-----------------------------------END----------------------------------------"

