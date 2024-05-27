# Input variables

# AWS Region
variable "aws_region" {
    description = "Region in which AWS resources to be created"
    type = string
    default = "us-east-1"
}

#Instance Type
variable "instance_type" {
  description = "Instance type"
  type = string
  default = "t2.micro"
}

# EC2 Key Pair
variable "instance_keypair" {
  description = "aws ec2 key pair"
  default  = "terraform"
}