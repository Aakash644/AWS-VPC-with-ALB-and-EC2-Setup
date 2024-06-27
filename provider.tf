#used to connect to required providers such as aws, azure, gcp
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}