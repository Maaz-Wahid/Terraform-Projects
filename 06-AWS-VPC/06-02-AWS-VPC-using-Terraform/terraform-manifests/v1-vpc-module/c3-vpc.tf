#Create VPC Terraform Variable
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"


#VPC Basic Details 
  name = "vpc-dev"
  cidr = "10.0.0.0/16"
  azs                 = ["euu-west-2a" , "eu-west-2b"]
  private_subnets     = ["10.0.1.0/24" , "10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24" , "10.0.102.0/24"]

  #Database subnet 
  database_subnets    = ["10.0.151.0/24" , "10.0.152.0/24"]
  create_database_subnet_group = true 
  create_database_subnet_route_table = true 
  create_database_internet_gateway_route = false #False is default anyway but just showing that this can become true 
  create_database_nat_gateway_route = false #False is default anyway but just showing that this can become true 


# NAT Gateway for outbound communication 
enable_nat_gateway = true 
single_nat_gateway = true 

# VPC DNS Parameters
enable_dns_hostnames = true 
enable_dns_support = true

# Enabling tags for public and private subnets 
public_subnet_tags = {
  Type = "public-subnets"
}
private_subnet_tags = {
  Type = "private-subnets"
}
database_subnet_tags = {
  Type = "database-subnets"
}

tags = {
  Owner = "Mo"
  Environment = "Dev"
}

vpc_tags = {
  Name =  "vpc-dev"
}

}