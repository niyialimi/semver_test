resource "aws_kms_key" "dynamo_db_kms" {
  enable_key_rotation = true
}

resource "aws_dynamodb_table" "state_lock" {
  name     = var.table_name
  hash_key = "LockID"

  server_side_encryption {
    enabled     = true
    kms_key_arn = aws_kms_key.dynamo_db_kms.key_id
  }

  attribute {
    name = "LockID"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  billing_mode = var.billing_mode

  tags = {
    "Name" = var.table_name
  }
}
