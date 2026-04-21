module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.ec2_name

  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name

  tags = {
    IaC = true
  }
}