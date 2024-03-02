resource "aws_s3_bucket" "dev4" {
  bucket = "gasfgrv-bucket-dev4"
  tags = {
    Name = "gasfgrv-bucket-dev4"
  }
}
