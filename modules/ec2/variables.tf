variable ec2_name {
  type        = string
  default     = "ubuntu-instance"
  description = "Name of the EC2 instance"
}

variable ec2_ami {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable ec2_instance_type {
  type        = string
  default     = "t3.micro"
  description = "Instance type for the EC2 instance"
}


variable  ec2_key_name {
  type        = string
  description = "Key pair name for the EC2 instance"
}


