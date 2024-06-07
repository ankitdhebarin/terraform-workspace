data "aws_ami" "amznlinux2" {
  most_recent      = true
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-ebs"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}