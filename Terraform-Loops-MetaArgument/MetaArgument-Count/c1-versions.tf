# Terraform Block
terraform {
    required_version = "~> 0.14" # Meaning any version equal to 0.14 and above like 0.15, 0.16 etc..
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
}

# Provider Block
provider "aws" {
    region = var.aws_region
}