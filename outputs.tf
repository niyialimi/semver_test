output "bucket_name" {
  value = module.s3_bucket.bucket_name
}

output "dynamodb" {
  value = module.dynamodb.dynamodb
}
