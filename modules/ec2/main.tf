module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.name

  ami = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    IaC = true
  }
}