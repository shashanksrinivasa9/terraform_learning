module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  #version = "3.11.0"
  #version = "~> 3.11"
  #version = "4.0.1"  
  version = "5.6.0"  
  
  # VPC Basic Details
  name = "my-vpc-terraform"
  #vpc_cidr_block = var.vpc_variables.vpc_cidr_block
  azs = var.azs
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets
 
  enable_nat_gateway = var.vpc_enable_nat_gateway 
  single_nat_gateway = var.vpc_single_nat_gateway

  # Instances launched into the Public subnet should be assigned a public IP address.
  map_public_ip_on_launch = true

}