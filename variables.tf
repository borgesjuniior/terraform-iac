variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
  default     = "tf-iac-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for the VPC"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "public_subnets" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
  default     = ["10.1.0.0/24", "10.1.1.0/24", "10.1.2.0/24"]
}

variable "ec2_ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
  default     = "ami-07062e2a343acc423"
}

variable "ec2_instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
  default     = "t3.micro"
}

variable "ec2_key_name" {
  type        = string
  description = "Key pair name for the EC2 instance"
  default     = null
}