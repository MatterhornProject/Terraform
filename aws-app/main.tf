resource "aws_s3_bucket" "bucket" {
    bucket = "frontend-app2"
  }

  resource "aws_s3_bucket_public_access_block" "public_access_block" {
    bucket = aws_s3_bucket.bucket.id

    block_public_acls       = true
    block_public_policy     = false
    ignore_public_acls      = true
    restrict_public_buckets = false

}
