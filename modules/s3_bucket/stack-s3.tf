resource "aws_s3_bucket" "state_lock" {
  bucket = var.bucket_name
  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn"
        sse_algorithm     = "aws:kms"
      }
    }
  }

  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_logging" "example" {
  bucket        = aws_s3_bucket.state_lock.id
  target_bucket = aws_s3_bucket.state_lock.id
  target_prefix = "log/"
}

resource "aws_s3_bucket_public_access_block" "bucket_access" {
  bucket                  = aws_s3_bucket.state_lock.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.state_lock.id
  acl    = var.acl
}
