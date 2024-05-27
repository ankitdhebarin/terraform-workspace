resource "aws_instance" "myec2vm"{
    ami = data.aws_ami.amzlinux2
    instance_type = var.instance_type
    user_data = file("${path.module}/app-install.sh")
    key_name = var.instance_keypair
    security_groups = [ aws_security_group.vpc-ssh, aws_security_group.vpc-web ]
    tags = {
        "Name" = "EC2 Demo 2"
    }
}