resource "aws_s3_bucket" "demo" {
  bucket = "my-demo-bucket-123456789"

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
