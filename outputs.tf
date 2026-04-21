output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID of the VPC created"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "IDs of the public subnets created"
}

# output "ec2_instance_id" {
#   value       = module.ec2.id
#   description = "ID of the EC2 instance created"
# }

# output "ec2_name" {
#   value       = module.ec2.name
#   description = "Name of the EC2 instance created"
# }