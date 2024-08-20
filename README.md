# AWS-Multi-Tier-Architecture-using-Terraform

This project implements a multi-tier architecture on AWS using Terraform. The infrastructure consists of a Web Tier and an Application Tier, designed to provide a scalable and secure environment for deploying applications. 

This setup will create a scalable, secure, and highly available infrastructure, with distinct layers that communicate seamlessly. The architecture includes an Amazon Virtual Private Cloud (VPC), Elastic Load Balancer (ELB), Auto Scaling Group (ASG).

In the Web tier, an Elastic Load Balancer (ELB) and NAT gateway are provisioned within the public subnets. The Elastic Load Balancer (ELB) serves as the access point to the underlying infrastructure, while the NAT gateway allows private subnets to communicate with the internet, maintaining security by hiding the private IP addresses of instances from the public internet.

In the Application tier,a backend auto-scaling group is established for the backend application. A script will be created to install the Apache web server on the frontend instances.

# Prerequisites

**Before you begin, ensure that you have the following prerequisites:**

1.AWS account credentials (access key ID and secret access key).

2.Terraform installed on your local machine. You can download Terraform from the official website: https://www.terraform.io/downloads.html.

3.Basic knowledge of AWS services such as EC2, VPC, ELB, ASG.

4.Familiarity with the basics of Terraform, including how to write Terraform configuration files (.tf).

# Steps

Follow these step-by-step instructions to deploy a three-tier architecture on AWS using Terraform:

# Step 1: Clone the Repository

1. Open a terminal or command prompt on your local machine.
2. Clone the repository containing the Terraform configuration files

   `git clone https://github.com/AWS-Multi-Tier-Architecture-using-Terraform.git`

3.  Change into the project directory

    `cd AWS-Multi-Tier-Architecture-using-Terraform`
   
# Step 2: Configure AWS Credentials
1. Open the AWS Management Console in your web browser.
2. Navigate to the IAM service.
3. Create a new IAM user or use an existing one.
4. Assign the necessary permissions to the IAM user, such as AmazonEC2FullAccess, AmazonRDSFullAccess, AmazonVPCFullAccess, 
    and ElasticLoadBalancingFullAccess.
5. Generate an access key ID and secret access key for the IAM user.

   `aws configure`
   
6. Enter the access key ID and secret access key when prompted, and optionally set the default region.

# Step 3: Initialize Terraform
1. Install the terraform binary from the terraform official website (For windows). Download terraform as per the Operating 
   system

   https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
   
3. Now copy and paste the binary in the project directory (For Windows OS only)
4. Run the following command to fix any syntax issue

   `terraform fmt`
5. Run the following command to initialize Terraform and download the required providers:

   `terraform init`
   
# Step 6: Review and Validate the Configuration

1. To preview the changes that Terraform will make, run:

   `terraform plan`
   
   Examine the output to ensure that the proposed infrastructure aligns with your expectations.

# Step 7: Deploy the Infrastructure

1. Deploy the infrastructure by running:

   `terraform apply`

   Terraform will present a summary of the changes to be applied. Type yes to confirm and initiate the deployment.
2. Wait while Terraform provisions the infrastructure. This may take several minutes.

# Step 8: Access the Application

1. Once deployment is complete, Terraform will provide the DNS name of the Elastic Load Balancer (ELB).

2. Copy the DNS name and paste it into your web browser.

3. If everything is configured correctly, you should see the application running.

# Step 9: Destroy the Infrastructure (Optional)

To remove all resources created by Terraform, follow these steps:

1. Navigate to the project directory in your terminal or command prompt.

2. Run the following command to destroy the infrastructure:

   `terraform destroy`

3. Type yes to confirm and proceed with the destruction.






