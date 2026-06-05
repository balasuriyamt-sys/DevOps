resource "aws_s3_bucket" "demo" {
  bucket = "my-demo-bucket-123456789deededee"

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
