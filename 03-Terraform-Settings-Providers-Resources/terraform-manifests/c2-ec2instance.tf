# Resource: EC2 Instance
resource "aws_instance" "myec2" {
  ami = "ami-0e34bbddc66def5ac"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}