#! /bin/bash

echo -e "\n"
echo -e "\e[38;5;82m _ \  __|   __|   _ \   \ |     \  |    \     __|  |  | _ _|   \ |  __|"
echo -e "\e[38;5;82m   /  _|   (     (   | .  |    |\/ |   _ \   (     __ |   |   .  |  _| "
echo -e "\e[38;5;82m_|_\ ___| \___| \___/ _|\_|   _|  _| _/  _\ \___| _| _| ___| _|\_| ___|\e[0m"
echo -e "\e[31m                                         Automated by @Bala_Elangovan:)\e[0m"

echo -e "\n\e[33m1. Paramspider to find parameter.(Give it a domain or url)"
echo -e "\n\e[33m2. Arjun for finding param in url"
echo "  copy paste a url to find hidden parameter for xss or redirect (Arjun tool)"
echo -e "\n\e[33m3. Smuggler to find http request smuggling give a url (Smuggler tool)"
echo -e "\n\e[33m4. Feeding into gf to find patterns (GF tool) DO subdomain.sh first before proceeding"
echo -e "\n\e[33m5. Github-recon to find sensitive files (Trufflehog)"
echo -e "\n\e[33m6. Port scanning (naabu)"
echo -e "\n\e[33m7. Nuclei to test for cve and technologies(nuclei)\n\e[0m"
read process

if (($process == 1))
then
echo -e "\nEnter domain or url :\n"
read domain
python3 /mnt/c/users/balae/Desktop/ubuntu/tools/ParamSpider/paramspider.py -d $domain

elif (($process == 2))
then
echo -e "\nEnter the domain along with http and https :\n"
read domain1
cd tools/Arjun/
python3 arjun.py -u $domain1

elif (($process == 3))
then
echo -e "\nLooking for http request smuggling"
echo -e "\nGive it a url :\n"
read domain2
python3 /mnt/c/users/balae/Desktop/ubuntu/tools/smuggler/smuggler.py -u $domain2

elif (($process == 4))
then
cd ~/.gf/
ls
echo -e "\nChoose the file to be fed into gf\n"
read domain3
echo -e "\nChoose a method (xss,redirect,ssrf,ssti,upload-fields,wordpress,urls,firebase,s3-bucket,ip)\n"
read process1
gf $process1 $domain3

elif (($process == 5))
then
echo -e "\nEnter a github target url :\n"
read domain4
trufflehog --regex --entropy=false $domain4

elif (($process == 6))
then
echo -e "\nEnter a domain :\n"
read domain5
naabu -host $domain5

elif (($process == 7))
then
ls
echo -e "\nChoose the cve, fuzzing, technologies, security-misconfigurations\n"
read $process2
echo -e "\nChoose the file :\n"
read domain6
cat $domain6 | nuclei -t nuclei-templates/$process2 -v
fi
