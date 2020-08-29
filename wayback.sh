#!/bin/bash

cat $1 | waybackurls | httpx > $1_wayback.txt


echo "Moving to GF folder"
echo -e "\n"
echo -e "\n"

cd ~/.gf/

echo "Running gf by tomnomnom"
echo "------------------------------------------------------"
echo -e "\n"
echo -e "\n"
echo  "1. AWS KEYS"
gf aws-keys /root/waybackandgf/$1_wayback.txt

echo "2. base 64"
gf base64 /root/waybackandgf/$1_wayback.txt

echo "3. CORS"
gf cors /root/waybackandgf/$1_wayback.txt

echo "4. HTTP-AUTH"
gf http-auth /root/waybackandgf/$1_wayback.txt

echo "5. php-curl"
gf php-curl /root/waybackandgf/$1_wayback.txt

echo "6. Redirect"
gf redirect /root/waybackandgf/$1_wayback.txt

echo "7. xss"
gf xss /root/waybackandgf/$1_wayback.txt

echo "8. Php-errors"
gf php-errors /root/waybackandgf/$1_wayback.txt

echo "9. potential"
gf potential /root/waybackandgf/$1_wayback.txt

echo "10. s3 buckets"
gf s3-buckets /root/waybackandgf/$1_wayback.txt

echo  "11. wordpress"
gf wordpress /root/waybackandgf/$1_wayback.txt

echo "12. Uploads"
gf upload-fields /root/waybackandgf/$1_wayback.txt

echo "13. TAKEOVERS"
gf takeovers /root/waybackandgf/$1_wayback.txt


mv $1_wayback.txt ~/recon

echo -e "\n"
echo -e "\n"
echo "------------------------------------------------------"
