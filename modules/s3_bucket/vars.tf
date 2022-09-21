variable "bucket_name" {
  description = "The S3 bucket name"
  type        = string
}

variable "acl" {
  description = "The security permission for the S3 bucket"
  type        = string
}
