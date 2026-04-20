# Instancia o módulo externo de bucket S3 do registro do Terraform.
# Este módulo lida com a criação de um bucket S3 com várias configurações.
module "s3-bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  # O nome do bucket é passado como uma variável do módulo que chamar.
  bucket = var.bucket_name

  # Adiciona tags ao bucket para identificação e gerenciamento.
  # A tag "IaC" indica que este recurso é gerenciado por Infraestrutura como Código.
  tags = {
    IaC = true
  }

  # Fixa o módulo a uma versão específica para garantir consistência e evitar mudanças disruptivas.
  version = "5.12.0"
}