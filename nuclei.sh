#!/bin/bash

echo -e "\n"
echo -e "\n"
echo "Moving to nuclei"
echo "---------------------------------------------------------------------------"
cd ~/tools/nuclei

echo "1. CVE"
cat $1 | nuclei -t nuclei-templates/cves -o $1_nuclei.txt

echo "2. Default Credentials"
cat $1 | nuclei -t nuclei-templates/default-credentials -o $1_nuclei.txt

echo "3. DNS"
cat $1 | nuclei -t nuclei-templates/dns -o $1_nuclei.txt

echo "4. Files "
cat $1 | nuclei -t nuclei-templates/files -o $1_nuclei.txt

echo "5. generic"
cat $1 | nuclei -t nuclei-templates/generic-detections -o $1_nuclei.txt

echo "6. panels"
cat $1 | nuclei -t nuclei-templates/panels -o $1_nuclei.txt

echo "7. payloads"
cat $1 | nuclei -t nuclei-templates/payloads -o $1_nuclei.txt

echo "8. security misconfiguration"
cat $1 | nuclei -t nuclei-templates/security-misconfiguration -o $1_nuclei.txt

echo "9. Subdomain-Takeover"
cat $1 | nuclei -t nuclei-templates/subdomain-takeover -o $1_nuclei.txt

echo "10. technologies"
cat $1 | nuclei -t nuclei-templates/technologies -o $1_nuclei.txt

echo "11. Tokens"
cat $1 | nuclei -t nuclei-templates/tokens -o $1_nuclei.txt 

echo "12. vulnerabilities"
cat $1 | nuclei -t nuclei-templates/vulnerabilities -o $1_nuclei.txt

echo "13. workflows"
cat $1 | nuclei -t nuclei-templates/workflows -o $1_nuclei.txt

mv $1_nuclei.txt ~/recon

