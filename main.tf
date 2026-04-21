module "vpc" {
  source = "./modules/vpc"
  name   = var.vpc_name
  cidr   = var.vpc_cidr

  azs            = var.availability_zones
  public_subnets = var.public_subnets
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
  subnet_id     = module.vpc.public_subnets[0]

  depends_on = [module.vpc]
}