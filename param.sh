#!/bin/bash

echo "Running ParamSpider"
echo "-----------------------------------------------------"

cd ~/tools/ParamSpider
python3 paramspider.py -d $1 -o $1.txt

cd output/
cd ~/.gf/

echo "Running gf by tomnomnom"
echo "------------------------------------------------------"
echo  "1. AWS KEYS"
gf aws-keys /root/tools/ParamSpider/output/$1.txt

echo "2. base 64"
gf base64 /root/tools/ParamSpider/output/$1.txt

echo "3. CORS"
gf cors /root/tools/ParamSpider/output/$1.txt

echo "4. HTTP-AUTH"
gf http-auth /root/tools/ParamSpider/output/$1.txt

echo "5. php-curl"
gf php-curl /root/tools/ParamSpider/output/$1.txt

echo "6. Redirect"
gf redirect /root/tools/ParamSpider/output/$1.txt

echo "7. xss"
gf xss /root/tools/ParamSpider/output/$1.txt

echo "8. Php-errors"
gf php-errors /root/tools/ParamSpider/output/$1.txt

echo "9. potential"
gf potential /root/tools/ParamSpider/output/$1.txt

echo "10. s3 buckets"
gf s3-buckets /root/tools/ParamSpider/output/$1.txt

echo  "11. wordpress"
gf wordpress /root/tools/ParamSpider/output/$1.txt

echo "12. Uploads"
gf upload-fields /root/tools/ParamSpider/output/$1.txt

echo "13. TAKEOVERS"
gf takeovers /root/tools/ParamSpider/output/$1.txt


