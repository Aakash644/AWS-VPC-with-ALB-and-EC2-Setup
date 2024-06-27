# AWS VPC with ALB and EC2 Setup

This Terraform project sets up an AWS infrastructure with the following components:
- A Virtual Private Cloud (VPC)
- Two subnets
- An Internet Gateway
- A route table
- A security group
- An S3 bucket
- Two EC2 instances
- An Application Load Balancer (ALB) with a target group and listener

## Prerequisites

- Terraform installed on your local machine
- AWS CLI configured with the necessary permissions

## Project Structure
AWS VPC with ALB and EC2 Setup<br>
├── main.tf # Main Terraform configuration<br>
├── variables.tf # Variable definitions<br>
├── outputs.tf # Output values<br>
├── userdata.sh # User data script for webserver1<br>
├── userdata1.sh # User data script for webserver2<br>
└── README.md # Project documentation<br>

## User Data Scripts
- The userdata.sh and userdata1.sh files should contain the initialization scripts for the EC2 instances.

## Deployment
### 1. Initialize the Terraform project:
```sh 
terraform init 
```
### 2. Validate the configuration:
```sh
terraform validate
```
### 3. Plan the deployment:
```sh
terraform plan -var="cidr=<your-cidr-block>"
```
### 4. Apply the deployment:
```sh
terraform apply -var="cidr=<your-cidr-block>"
```

## Outputs
- After the deployment, the DNS name of the load balancer will be outputted. You can find it in the outputs.tf file.

## Cleanup 
- To delete the created resources, apply the below command:
```sh
terraform destroy -var="cidr=<your-cidr-block>"
```
## Notes
- Ensure that the AMI IDs used in aws_instance resources are valid for your region.
- Adjust the cidr_block values for the subnets as necessary.
