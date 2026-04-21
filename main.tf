module "s3" {
  source      = "./modules/s3"
  bucket_name = "tf-iac-bucket-${terraform.workspace}-777"
}

module "vpc" {
  source = "./modules/vpc"
  vpc_name = "tf-iac-vpc"
  vpc_cidr   = "10.0.0.0/16"
}

module "ec2" {
  source = "./modules/ec2"
  ec2_ami = "ami-07062e2a343acc423" 
  ec2_instance_type = "t3.micro"
  ec2_key_name = "ubuntu-ssh-key" 
}