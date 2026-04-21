output bucket_domain_name {
  value       = module.s3-bucket.s3_bucket_bucket_domain_name
  description = "Nome de domínio do bucket S3"
}
