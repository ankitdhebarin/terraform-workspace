# EC2 Instance Public IP
output "instance_publicip"{
    description = "Public IP of the ec2 instance"
    value = aws_instance.myec2vm.public_ip
}

# EC2 Instance Public DNS
output "instance_publicdns"{
    description = "Public DNS of the ec2 instance"
    value = aws_instance.myec2vm.public_dns
}