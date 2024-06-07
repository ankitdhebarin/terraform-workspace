variable "aws_region" {
    description = "AWS Region"
    type = string
    default = "us-east-1"
}

variable "environment" {
    description = "Deployment environment"
    type = string
    default = "dev"
}

variable "business_division" {
    description = "Business Division"
    type = string
    default = "SAP"
}

