resource "aws_dynamodb_table" "state_lock" {
  name     = var.table_name
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = var.billing_mode

  tags = {
    "Name" = "${var.table_name}"
  }
}