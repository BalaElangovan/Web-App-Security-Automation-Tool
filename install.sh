#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y python3-pip

mkdir tools
cd ~/tools

echo -e "Installing Subfinder \n"
git clone https://github.com/projectdiscovery/subfinder.git
cd subfinder/cmd/subfinder
go build .
mv subfinder /usr/local/bin/

cd
cd ~/tools

echo -e "Installing amass \n" 
wget "https://github.com/OWASP/Amass/releases/download/v3.9.1/amass_linux_amd64.zip"
unzip amass_linux_amd64.zip
rm amass_linux_amd64.zip
cd amass_linux_amd64
cp amass /usr/local/bin/


cd
cd ~/tools

echo -e "Installing Arjun \n"
git clone https://github.com/s0md3v/Arjun.git

echo -e "Installing httprobe \n"
go get -u github.com/tomnomnom/httprobe

echo -e "Installing gau"
wget "https://github.com/lc/gau/releases/download/v1.0.3/gau_1.0.3_linux_amd64.tar.gz"
tar xvf gau_1.0.3_linux_amd64.tar.gz
mv gau /usr/bin/gau
rm gau_1.0.3_linux_amd64.tar.gz LICENSE README.md

echo -e "Installing waybackurls \n"
git clone https://github.com/tomnomnom/waybackurls.git
cd waybackurls/
go build
mv waybackurls /usr/local/bin/


cd
cd ~/tools

echo -e "Installing Seclist \n"
git clone https://github.com/danielmiessler/SecLists.git


echo -e "Installing dirsearch \n"
git clone https://github.com/maurosoria/dirsearch.git

echo -e "Installing Paramspider \n"
git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
pip3 install -r requirements.txt


echo -e "Installing Subjack \n"
go get github.com/haccer/subjack
cd
cd go-workspace/bin/
mv subjack /usr/local/bin

cd
cd ~/tools

echo -e "Installing httpx \n"
git clone https://github.com/projectdiscovery/httpx.git
cd httpx/cmd/httpx
go build
mv httpx /usr/local/bin/

cd
cd ~/tools


echo -e "Installing naabu \n"
wget "https://github.com/projectdiscovery/naabu/releases/download/v1.1.4/naabu_1.1.4_linux_amd64.tar.gz"
tar -xzvf naabu_1.1.4_linux_amd64.tar.gz
mv naabu /usr/local/bin/
rm naabu_1.1.4_linux_amd64.tar.gz README.md LICENSE

echo -e "Installing nuclei \n"
git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/cmd/nuclei/
go build
mv nuclei /usr/local/bin/
git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/cmd/nuclei/
go build .
mv nuclei /usr/local/bin/
cd
git clone https://github.com/projectdiscovery/nuclei.git
cd nuclei/cmd/nuclei/
go build .
mv nuclei /usr/local/bin/

echo -e "Installing git-hound \n"
wget "https://github.com/tillson/git-hound/releases/download/v1.3/git-hound_1.3_Linux_x86_64.tar.gz"
tar -xvf git-hound_1.3_Linux_x86_64.tar.gz 
mv git-hound /usr/local/bin/
rm git-hound_1.3_Linux_x86_64.tar.gz README.md LICENSE
cd /usr/local/bin
nano config.yml

cd
cd ~/tools

echo -e "Installing Favfreak \n"
git clone https://github.com/devanshbatham/FavFreak
cd FavFreak
python3 -m pip install mmh3

cd
cd ~/tools
git clone https://github.com/KathanP19/JSFScan.sh.git
cd JSFScan.sh/
chmod +x install.sh
./install.sh

echo -e "installing Jsparser \n"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser/
pip3 install -r requirments.txt
python setup.py install


echo "END"
















