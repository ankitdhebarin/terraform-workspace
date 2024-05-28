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

# EC2 List Types
variable "instance_type_list" {
  description = "List Instance Type"
  type = list(string)
  default = ["t2.micro", "t3.small"]
}

# EC2 Map Types
variable "instance_type_map" {
  description = "Map Instance Type"
  type = map(string)
  default = {
    "dev" = t3.micro
    "qa" = t3.small
    "prod" = t3.large
  }
}