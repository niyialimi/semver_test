output "dynamodb" {
  value = aws_dynamodb_table.state_lock.name
}
