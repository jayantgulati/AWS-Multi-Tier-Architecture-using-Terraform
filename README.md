# AWS-Multi-Tier-Architecture-using-Terraform

This project implements a multi-tier architecture on AWS using Terraform. The infrastructure consists of a Web Tier and an Application Tier, designed to provide a scalable and secure environment for deploying applications. 

This setup will create a scalable, secure, and highly available infrastructure, with distinct layers that communicate seamlessly. The architecture includes an Amazon Virtual Private Cloud (VPC), Elastic Load Balancer (ELB), Auto Scaling Group (ASG).

In the Web tier, an Elastic Load Balancer (ELB) and NAT gateway are provisioned within the public subnets. The Elastic Load Balancer (ELB) serves as the access point to the underlying infrastructure, while the NAT gateway allows private subnets to communicate with the internet, maintaining security by hiding the private IP addresses of instances from the public internet.

In the Application tier,a backend auto-scaling group is established for the backend application. A script will be created to install the Apache web server on the frontend instances.

**Prerequisites
Before you begin, ensure that you have the following prerequisites:**

AWS account credentials (access key ID and secret access key).
Terraform installed on your local machine. You can download Terraform from the official website: https://www.terraform.io/downloads.html.
Basic knowledge of AWS services such as EC2, VPC, ELB, ASG.
Familiarity with the basics of Terraform, including how to write Terraform configuration files (.tf).

