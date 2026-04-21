module "vpc" {
  source = "./modules/vpc"
  name   = "tf-iac-vpc"
  cidr   = "10.1.0.0/16"

  azs            = ["us-east-2a", "us-east-2b", "us-east-2c"]
  public_subnets = ["10.1.0.0/24", "10.1.1.0/24", "10.1.2.0/24"]
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = "ami-07062e2a343acc423"
  instance_type = "t3.micro"
  key_name      = null
  subnet_id     = module.vpc.public_subnets[0]

  depends_on = [module.vpc]
}