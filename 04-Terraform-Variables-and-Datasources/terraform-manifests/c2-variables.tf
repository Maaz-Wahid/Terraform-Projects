# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS resources will be created in"
  type = string
  default = "eu-west-2"
  
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC@ instance type"
  type = string 
  default = "t2.micro"
}


# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 key that must be associated with EC2 instance"
  type = string 
  default = "terraform-key"
}


