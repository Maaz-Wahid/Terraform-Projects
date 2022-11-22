# EC2 Instance
resource "aws_instance" "myec2" {
ami =   data.aws_ami.amzlinux2.id
instance_type = "t2.micro"
user_data = file("${path.module}/app1-install.sh")
key_name = var.instance_keypair
vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id ]
tags =  {
  "Name" = "EC2 Demo 2"
}
}
