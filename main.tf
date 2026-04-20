resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-iac-terraform-${terraform.workspace}-02648ad7"

  tags = {
    Name = "Meu Bucket"
    Iac = true
  }
}
