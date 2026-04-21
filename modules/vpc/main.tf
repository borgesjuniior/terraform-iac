module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs = var.azs
  public_subnets = var.public_subnets

  tags = {
    IaC = true
  }

  version = "6.6.1"
}