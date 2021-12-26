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

resource "aws_kms_key" "encryption_key" {
  description = "Encrypt terraform-backend data"
}

resource "aws_s3_bucket" "terraform-backend" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags   = var.bucket_tags

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = aws_kms_key.encryption_key.arn
      }
    }
  }
}
