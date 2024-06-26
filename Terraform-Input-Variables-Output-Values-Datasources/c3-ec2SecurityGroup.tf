resource "aws_security_group" "vpc-ssh" {
    name = "vpc-ssh"
    description = "Allow SSH inbound traffic"

    ingress {
        description      = "Allow port 22"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        description = "Allow all ips for outbound"
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "vpc-ssh"
    }
}

resource "aws_security_group" "vpc-web" {
    name = "vpc-web"
    description = "Allow web traffic"

    ingress {
        description      = "Allow port 80"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
        description      = "Allow port 443"
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        description = "Allow all ips for outbound"
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "vpc-web"
    }
}