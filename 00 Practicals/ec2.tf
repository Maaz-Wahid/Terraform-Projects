terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.26"
    }
  }
}

resource "aws_instance" "myec2" {
  ami = "ami-0e34bbddc66def5ac"
  instance_type = "t2.micro"
}


