# VPC Configuration
variable "vpc" {
  type = object({
    name               = string
    cidr               = string
    availability_zones = list(string)
    public_subnets     = list(string)
  })

  description = "VPC configuration object"

  default = {
    name               = "tf-iac-vpc"
    cidr               = "10.1.0.0/16"
    availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
    public_subnets     = ["10.1.0.0/24", "10.1.1.0/24", "10.1.2.0/24"]
  }
}

# EC2 Configuration
variable "ec2" {
  type = object({
    name          = string
    ami           = string
    instance_type = string
    key_name      = optional(string)
  })

  description = "EC2 instance configuration object"

  default = {
    name          = "ubuntu-instance"
    ami           = "ami-07062e2a343acc423"
    instance_type = "t3.micro"
    key_name      = null
  }
}