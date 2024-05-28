resource "aws_instance" "myec2vm"{
    ami = data.aws_ami.amzlinux2
    # instance_type = var.instance_type_list[1] # List type
    # instance_type = var.instance_type_map["prod"] # Map type
    user_data = file("${path.module}/app-install.sh")
    key_name = var.instance_keypair
    security_groups = [ aws_security_group.vpc-ssh, aws_security_group.vpc-web ]
    count = 2
    tags = {
        "Name" = "Count-Demo-${count.index}"
    }
}