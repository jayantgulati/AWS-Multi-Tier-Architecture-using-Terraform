# AWS-Multi-Tier-Architecture-using-Terraform

This project sets up a multi-tier architecture on AWS using Terraform. The infrastructure includes a Web Tier and an Application Tier, designed to deliver a scalable, secure, and highly available environment for application deployment.

The architecture consists of an Amazon Virtual Private Cloud (VPC), Elastic Load Balancer (ELB), and Auto Scaling Group (ASG). These components work together to create distinct layers that communicate seamlessly.

In the Web Tier, an Elastic Load Balancer (ELB) and NAT gateway are deployed within public subnets. The ELB acts as the entry point to the infrastructure, while the NAT gateway allows instances in private subnets to access the internet while keeping their private IP addresses hidden for security.

In the Application Tier, a backend auto-scaling group is set up to manage the backend application. Additionally, a script will be used to install the Apache web server on the frontend instances.

![image](https://github.com/user-attachments/assets/df81c461-ccde-4f2a-ae46-c827bbcc3f2f)


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

![image](https://github.com/user-attachments/assets/01fa990f-9df2-4a4d-8e07-8cb7a6e8dbda)

2. Copy the DNS name and paste it into your web browser.

3. If everything is configured correctly, you should see the application running.

![image](https://github.com/user-attachments/assets/5649c6e7-9a9a-4449-8e9a-9cab4fd6d125)


# Step 9: Destroy the Infrastructure (Optional- It will save unneccessary cost)

To remove all resources created by Terraform, follow these steps:

1. Navigate to the project directory in your terminal or command prompt.

2. Run the following command to destroy the infrastructure:

   `terraform destroy`

3. Type `yes` to confirm and proceed with the destruction.

# Conclusion

Congratulations! You've successfully deployed a multi-tier architecture on AWS using Terraform. This setup offers a scalable and highly available infrastructure for your applications. Be sure to follow AWS best practices and security guidelines when deploying your production workloads.




