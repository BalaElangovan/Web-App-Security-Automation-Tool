#!/bin/bash

cd ~/tools/dirsearch

echo "1. Common.txt Payload"
echo "By default recursive is at 3"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/common.txt -r -R 3 -t 200
echo -e "\n"
echo "---------------------------------------------------------------------------"
echo -e "\n"

echo "2. raft-large-directories"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/raft-large-directories.txt -r -R 3 -t 200
echo -e "\n"
echo "-----------------------------------------------------------------------------"
echo -e "\n"

echo "3. all.txt"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/SVNDigger/all.txt -r -R 3 -t 200
echo -e "\n"
echo "-----------------------------------------------------------------------------"
echo -e "\n"

echo "4. tomcat"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/tomcat.txt -r -R 3 -t 200
echo -e "\n"
echo "-----------------------------------------------------------------------------"
echo -e "\n"

echo "5. directory-list-1.0"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/directory-list-1.0.txt -r -R 3 -t 200
echo -e "\n"
echo "-----------------------------------------------------------------------------"
echo -e "\n"

echo "6. Robots file"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/RobotsDisallowed-Top500.txt -r -R 3 -t 200
echo -e "\n"
echo "-----------------------------------------------------------------------------"
echo -e "\n"

echo "7. oracle"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/oracle.txt -r -R 3 -t 200
echo -e "\n"
echo "-----------------------------------------------------------------------------"
echo -e "\n"

echo "8. Nginx"
python3 dirsearch.py -u $1 -e php, asp, aspx, jsp, js, do, action, html, json, yml, yaml, xml, cfg, bak, txt, md, sql, zip, tar.gz, tgz -x 404 -w ~/tools/SecLists/Discovery/Web-Content/nginx.txt -r -R 3 -t 200
echo -e "\n"
echo "-----------------------------------------------------------------------------"
echo -e "\n"

