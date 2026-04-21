module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  tags = {
    IaC = true
  }

  version = "6.6.1"
}