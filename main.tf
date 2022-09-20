module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
  acl         = var.acl
}

module "dynamodb" {
  source         = "./modules/dynamodb"
  table_name     = var.table_name
  billing_mode = var.billing_mode
}