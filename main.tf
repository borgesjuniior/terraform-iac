module "vpc" {
  source = "./modules/vpc"
  name   = var.vpc.name
  cidr   = var.vpc.cidr

  azs            = var.vpc.availability_zones
  public_subnets = var.vpc.public_subnets
}

module "ec2" {
  source        = "./modules/ec2"
  name          = var.ec2.name
  ami           = var.ec2.ami
  instance_type = var.ec2.instance_type
  key_name      = var.ec2.key_name
  subnet_id     = module.vpc.public_subnets[0]

  depends_on = [module.vpc]
}