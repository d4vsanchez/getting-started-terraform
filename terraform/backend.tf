terraform {
  backend "s3" {
    bucket = "d4vsanchez-terraform-backend"
    key    = "dev"
    region = "us-east-1"
  }
}
