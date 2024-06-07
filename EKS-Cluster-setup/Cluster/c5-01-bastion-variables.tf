variable "instance_type" {
  description = "EC2 instance type for bastion hosts"
  type = string
  default = ["t3.micro"]
}

variable "instance_key_pair" {
  description = "EC2 key pair"
  type = string
  default = "terraform"
}