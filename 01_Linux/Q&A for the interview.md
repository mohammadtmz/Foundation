# 1. Technical Questions

## Linux Basics

**Question:** Explain the Linux file system hierarchy.  
**Answer:** The Linux file system hierarchy starts from the root directory `/`, with common directories like `/bin` for binaries, `/etc` for configuration files, `/home` for user directories, `/var` for variable data like logs, `/tmp` for temporary files, etc.

**Question:** How do you check the disk usage of directories in Linux?  
**Answer:** Use the `du` command, for example: `du -sh /var/log` to check the disk usage of the `/var/log` directory.

**Question:** What is the significance of `chmod` and `chown` commands?  
**Answer:** `chmod` is used to change file or directory permissions, while `chown` changes the owner and group of a file or directory.

## Cloud Engineering Basics

**Question:** What are the key differences between vertical and horizontal scaling in cloud environments?  
**Answer:** Vertical scaling increases the power of a single server (e.g., adding more CPU or RAM), while horizontal scaling adds more servers to distribute the load.

**Question:** Explain how you would configure a VPC (Virtual Private Cloud) on AWS.  
**Answer:** The configuration involves creating a VPC, defining subnets, setting up route tables, configuring internet gateways for public subnets, and ensuring security groups and network ACLs are properly configured.

**Question:** How do you secure data in transit and at rest in a cloud environment?  
**Answer:** Data in transit can be secured using SSL/TLS encryption, while data at rest can be encrypted using services like AWS KMS or by enabling encryption at the storage level (e.g., EBS encryption in AWS).

# 2. Practical Tasks

## Task 1: Set up a Web Server

**Task:** Using a Linux virtual machine, install and configure an Apache or Nginx web server. Ensure the server serves a simple HTML page.  
**Evaluation:** Check their ability to install packages (`yum`, `apt-get`), modify configuration files, manage services (`systemctl`), and troubleshoot any issues that arise (e.g., checking firewall rules, ensuring the service is running).

## Task 2: Write a Bash Script

**Task:** Write a bash script that checks the disk usage on a Linux server and sends an alert if usage exceeds 80%.  
**Evaluation:** Review the script for correct usage of commands (`df`, `awk`, `mail`), logical flow, and error handling.

## Task 3: Cloud Infrastructure Deployment

**Task:** Deploy a simple cloud infrastructure using Terraform (or any other IAC tool) that includes an EC2 instance, a security group, and an S3 bucket.  
**Evaluation:** Assess their knowledge of Infrastructure as Code (IAC), resource management, and best practices in cloud deployments.

# 3. Scenario-Based Questions

## Scenario 1: Scaling an Application

**Scenario:** Your web application is experiencing high traffic, causing slow response times. How would you approach scaling the application in a cloud environment?  
**Answer:** Discuss solutions such as auto-scaling groups, load balancers, caching strategies, and database optimization. They should also consider monitoring and alerting for proactive management.

## Scenario 2: Network Connectivity Issue

**Scenario:** A cloud instance in a private subnet cannot connect to the internet. How would you troubleshoot this issue?  
**Answer:** Steps should include checking the route table for proper routing, ensuring the NAT gateway or instance is configured correctly, verifying security group rules, and examining the VPC's internet gateway setup.

# 4. Troubleshooting Questions

## Issue 1: Server Running Out of Memory

**Question:** A Linux server has become unresponsive, and you suspect it's out of memory. How do you troubleshoot and resolve this issue?  
**Answer:** Start by connecting via SSH (if possible), use `top` or `htop` to identify memory-hogging processes, check logs in `/var/log`, and consider adding swap space or upgrading the instance type for more RAM.

## Issue 2: Application Failing to Start After a Reboot

**Question:** After rebooting a server, an application fails to start. How do you approach this problem?  
**Answer:** Check if the service is enabled to start on boot (`systemctl enable`), review logs (`journalctl -xe`), check for any missing dependencies, and verify that the environment variables and configuration files are correctly set up.

# 5. Behavioral Questions

**Question:** Describe a time when you faced a critical issue in a cloud environment. How did you resolve it?

**Question:** How do you stay updated with the latest cloud technologies and Linux best practices?

**Question:** Have you ever had to deal with a situation where your solution didn’t work? How did you handle it?
