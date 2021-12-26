provider "aws" {
  region = "us-east-1"
}

variable "ami_id" {
  type        = string
  description = "The AMI ID that we want to use to create the new EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2's instance type"
}

variable "tags" {
  type = map(any)
  default = {
    "Name" : "Getting Started",
    "Environment" : "Dev"
  }
}

resource "aws_instance" "terraform-test-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
}
