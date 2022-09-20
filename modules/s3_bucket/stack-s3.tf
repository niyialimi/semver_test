resource "aws_s3_bucket" "state_lock" {
  bucket = var.bucket_name
  tags = {
    Name = "${var.bucket_name}"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.state_lock.id
  acl    = var.acl
}