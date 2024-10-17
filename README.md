# Web App Security Automation Tool 
![banner](https://github.com/BalaElangovan/Web-App-Security-Automation-Tool/blob/master/recon.png)

# 1. About the project

This project is a comprehensive web app security automation tool crafted with Python and Bash scripting. It streamlines reconnaissance—a critical phase in penetration testing—by automating repetitive tasks. The tool includes scripts to detect common vulnerabilities such as cross-site scripting (XSS), subdomain takeover, open directories, server misconfigurations, sensitive information disclosure, S3 bucket takeovers, WordPress misconfigurations, and templates for CVE detection. Designed to run efficiently in the cloud, these automation scripts significantly reduce testing and reconnaissance time, making them indispensable for security professionals.

# 2. Installation

Installing the web app security automation tool is simple and hassle-free:

- Clone the repository:
```sh
git clone https://github.com/BalaElangovan/Web-App-Security-Automation-Tool
cd Web-App-Security-Automation-Tool
```

- Run the installation script:
```sh
./install.sh
```

- The installation script will:

   1. Update and upgrade necessary packages.

   2. Create directories in your system.

   3. Clone required tools from the repository.

   4. Build the tools as needed. 

- During the installation process, the terminal will display each step to ensure all tasks are performed correctly.

# 3. Usage

- Dirsearch

The dirsearch.sh script is designed to perform directory searches on web applications using different datasets. It helps in identifying common misconfigured directories or hidden directories that may be accessible. The values can be altered as per user requirements in the scripts but they are pre-defined for optimal performance. 
```sh
./dirsearch.sh
```

- Recon machine

This reconmachine.sh script is automated to look for common CVE, fuzzing, technologies used, security misconfiguration, GitHub information disclosure,  request smuggling, domain live status checker and also perform subdomain enumeration. These recon scripts have a wide variety of use cases, This all can be altered as per user requirements but fine-tuned for optimal performance.
```sh
./reconmachine.sh
```

- Subdomain.sh

This automation script is used to perform subdomain enumeration, resolving the subdomains, categorizing the domains to be used in different tools, look in wayback and archived enumeration, and check for live urls. All the results will be moved into a different folder and classified as per the tasks performed for manual checking. This tool proves to be used widely to perform the fundamentals steps.
```sh
./subdomain.sh
```
