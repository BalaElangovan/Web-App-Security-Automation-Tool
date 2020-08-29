#!/bin/bash

cd /usr/local/bin/

echo -e "\n"
echo "Running Githound"
echo "---------------------------------------------------------------------------"
echo -e "\n"
git-hound --subdomain-file /root/$1 --threads 200 >> ~/recon/$1_git.txt
