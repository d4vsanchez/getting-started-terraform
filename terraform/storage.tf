variable "bucket_name" {
  type        = string
  description = "The AWS S3 bucket name"
}

variable "bucket_acl" {
  type = string
}

variable "bucket_tags" {
  type = map(any)
}

resource "aws_s3_bucket" "terraform-backend" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags   = var.bucket_tags
}
