#! /bin/bash

#creatig a Directory
mkdir $1

#enumerating using subfinder and amass
subfinder -d $1 | tee -a $1_subfinder.txt
amass enum -passive -d $1 -o $1_amass.txt

#sorting and combining both subdomains
sort $1_subfinder.txt $1_amass.txt | uniq | tee -a $1_subdomains.txt

#removing the additional assets
rm $1_subfinder.txt $1_amass.txt

#resolving the subdomains
cat $1_subdomains.txt | httpx -o $1_alive.txt
cat $1_subdomains.txt | httpx --status-code --web-server --title -o $1_httpxExtended.txt 

#checking for subdomain takeover
subjack -w $1_subdomains.txt -t 100 -a -v -o $1_subjack_takeover.txt
SubOver -l $1_subdomains.txt -t 50 -a -v -o $1_subover_takeover.txt

#wayback and archives
waybackurls $1 | grep "\.js" | uniq | sort | tee -a  $1_jsfiles.txt
waybackurls $1 | uniq | sort | tee -a $1_waybackfile.txt
cp $1_waybackfile.txt ~/.gf/

#Get all urls
gau $1 >> $1_gau.txt

#checking for live js files
cat $1_jsfiles.txt | hakcheckurl | grep "200" | tee -a $1_live_jsfiles.txt

#moving all to the directory
mv $1_gau.txt $1_subdomains.txt $1_alive.txt $1_httpxExtended.txt $1_subjack_takeover.txt $1_subover_takeover.txt $1_jsfiles.txt $1_waybackfile.txt $1_live_jsfiles.txt /mnt/c/users/balae/Desktop/ubuntu/$1
