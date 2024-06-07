resource "null_resource" "copy_pem" {
  depends_on = [ module.ec2_instance ]
  # connection block
  connection {
    type = "ssh"
    user     = "ec2-user"
    host = module.ec2_instance.public_ip
    private_key = file("key-pair/terraform.pem")
  }

  # File provisioner
  provisioner "file" {
    source = "key-pair/terraform.pem"
    destination = "/tmp/terraform.pem"
  }

  # Remote Exec
  provisioner "remote-exec" {
    inline = [
        "sudo chmod 400 /tmp/terraform.pem"
    ]
  }

  # Local Exec
  provisioner "local-exec" {
    command = ["VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"]
    working_dir = "local_exec_dir/"
  }

  }