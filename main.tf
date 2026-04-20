# Este arquivo contém a configuração principal do Terraform, incluindo instanciações de módulos para a infraestrutura.

# Instancia o módulo S3 com um nome "banana_s3" (pode ser qualquer identificador).
# A fonte aponta para o diretório do módulo local.
# nome_bucket é construído dinamicamente usando o workspace atual do Terraform.
module "banana_s3" {
  source      = "./modules/s3"
  bucket_name = "terraform-iac-bucket-${terraform.workspace}-4793450"
}
