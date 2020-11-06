#! /bin/bash

echo "Available wordlists are 1.commom.txt 2.raft-large.txt 3.quickhits.txt"
read wordlist
echo "Enter the output file name"
read output
if (($wordlist == 1))
then
ffuf -w /mnt/c/users/balae/Desktop/ubuntu/bruteforce/common.txt -u "$1/FUZZ" -fc 404 -o $output -of csv
elif (($wordlist == 2))
then
ffuf -w /mnt/c/users/balae/Desktop/ubuntu/bruteforce/raft-large-directories.txt -u "$1/FUZZ" -fc 404 -o $output -of csv
elif (($wordlist == 3))
then
ffuf -w /mnt/c/users/balae/Desktop/ubuntu/bruteforce/quickhits.txt -u "$1FUZZ" -fc 404 -o $output -of csv
else
ffuf -w /mnt/c/users/balae/Desktop/ubuntu/bruteforce/RobotsDisallowed-Top500.txt -u "$1FUZZ" -fc 404 -o $output -of csv
fi
