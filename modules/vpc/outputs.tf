output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID of the VPC created"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "IDs of the public subnets created"
}

