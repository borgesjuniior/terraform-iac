module "s3-bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket_name

  tags = {
    IaC = true
  }

  version = "5.12.0"
}