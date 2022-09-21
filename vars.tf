variable "AWS_REGION" {
  description = "AWS region for the deployment"
  type        = string
  #default     = "ap-southeast-2"
}

variable "bucket_name" {
  description = "The S3 bucket name"
  type        = string
  #default     = "niyi-alimi-state-file"
}

variable "acl" {
  description = "The security permission for the S3 bucket"
  type        = string
  #default     = "private"
}

variable "table_name" {
  description = "The dynamodb table name"
  type        = string
  #default     = "niyi-alimi-state-lock"
}

variable "billing_mode" {
  description = "The billing mode"
  type        = string
  #default     = "PAY_PER_REQUEST"
}
