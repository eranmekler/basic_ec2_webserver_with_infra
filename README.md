

**Basic EC2 Webserver with Terraform and Infrastructure as Code (IaC)**

**Description:**

**This repository demonstrates the deployment of a basic web server using Terraform and Infrastructure as Code (IaC). It includes:**

    Terraform configuration files to provision an EC2 instance in AWS
    User data script to install Docker and run a Docker image containing a Flask web server
    (currently displaying "Hello World")
    A simple VPC network with public and private subnets

**Prerequisites:**

    An AWS account with access credentials configured
    Terraform installed locally (Download from https://www.terraform.io/)
    Docker installed locally (Download from https://docs.docker.com/)
    Basic understanding of Terraform and AWS concepts

**Setup:**

    Clone this repository:
    git clone https://github.com/eranmekler/basic_ec2_webserver_with_infra.git



**Configure your AWS credentials:**

	Set the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables 
	or create a configuration
	file as described in the Terraform documentation:
	https://registry.terraform.io/providers/hashicorp/aws/latest/docs

**Running the Infrastructure:**

    Initialize Terraform:

    cd basic_ec2_webserver_with_infra
    terraform init
    
    Preview infrastructure changes with:
    terraform plan

	Apply the Terraform configuration:
	terraform apply


**Important Note:**

This is a basic example for demonstration purposes. Running this code will create resources in your AWS account and incur associated charges. Make sure you understand the costs involved before applying the Terraform configuration.

**Destroy the Infrastructure:**

	When you're finished, you can destroy the resources provisioned by Terraform:
	terraform destroy

![](https://github.com/eranmekler/basic_ec2_webserver_with_infra/blob/main/basic_ec_&_vpc_config.jpg)



