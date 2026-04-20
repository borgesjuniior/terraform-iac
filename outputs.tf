# Este arquivo define as saídas da configuração do Terraform, expondo valores importantes após a implantação.

# Esta saída expõe o nome de domínio do bucket do módulo "banana_s3".
# É referenciada como module.banana_s3.bucket_domain_name, onde "bucket_domain_name" vem do output do módulo modules/s3/outputs.tf.
output "bucket_domain_name" {
  value       = module.banana_s3.bucket_domain_name
  description = "Nome de domínio do bucket S3"
}
