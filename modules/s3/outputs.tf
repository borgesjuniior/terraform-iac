# Este arquivo define as saídas para o módulo S3, fornecendo acesso às propriedades do bucket.
# Expõe o nome de domínio do bucket do módulo interno s3-bucket.
# Isso permite que o módulo raiz acesse e mostre este valor.
output bucket_domain_name {
  value       = module.s3-bucket.s3_bucket_bucket_domain_name
  description = "Nome de domínio do bucket S3"
}
