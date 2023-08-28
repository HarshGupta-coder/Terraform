# Terraform Infrastructure Automation

This repository contains Terraform code for automating infrastructure provisioning on AWS. The project aims to achieve streamlined deployment and management of resources using Infrastructure as Code (IaC) principles.

## Project Overview

The project leverages Terraform to automate the provisioning of infrastructure components on AWS. The key components managed through Terraform include:

1. **Instance Provisioning:** Automated creation of AWS EC2 instances with predefined configurations, instance types, and subnet associations.

2. **Volume Management:** Efficient attachment of EBS volumes to instances, optimizing storage capacity as required.

3. **Security Group Setup:** Definition of AWS security groups with defined inbound and outbound traffic rules for enhanced network security.

4. **VPC and Subnet Configuration:** Creation of Virtual Private Cloud (VPC) and subnets across different availability zones for proper network isolation.

5. **Web Server Deployment:** Implementation of a bash script for deploying a web server on instances, including package installation and content copying.

## Usage

To replicate this infrastructure setup in your environment:

1. Clone this repository to your local machine.
2. Configure your AWS credentials for Terraform access.
3. Modify variables in the `vars.tf` file to match your environment settings.
4. Run `terraform init` and `terraform apply` to provision the infrastructure.
5. Utilize the generated public and private key pair for secure instance access.
6. Customize the instance provisioning and web server deployment as per your needs.

## Prerequisites

- AWS account with configured access credentials.
- Terraform installed on your local machine.

## Project Structure

- `backend.tf`: Configuration for using an S3 bucket as the Terraform backend for storing state.
- `instance.tf`: Definition of EC2 instance creation and configuration.
- `providers.tf`: Definition of the AWS provider and region.
- `sg-group.tf`: Definition of the AWS security group rules.
- `vars.tf`: Definition of variables used throughout the project.
- `vpc.tf`: Configuration of Virtual Private Cloud (VPC) and subnets.


For more information about Terraform, visit the [Terraform website](https://www.terraform.io/).
