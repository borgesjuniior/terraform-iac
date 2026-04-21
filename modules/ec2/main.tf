module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = var.name
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  create_security_group = false

  tags = {
    IaC = true
  }
}