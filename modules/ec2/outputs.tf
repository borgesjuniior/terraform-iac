output "id" {
  value       = module.ec2_instance.id
  description = "ID of the EC2 instance created"
}

output "name" {
  value       = module.ec2_instance.tags_all["Name"]
  description = "Name of the EC2 instance created"
}
