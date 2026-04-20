resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-iac-terraform-02648ad7"

  tags = {
    Name = "Meu Bucket"
    Iac = true
  }
}
