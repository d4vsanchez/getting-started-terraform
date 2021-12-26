provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform-test-instance" {
  ami           = "ami-074d542b2787603f8"
  instance_type = "t2.micro"
  tags = {
    Name        = "getting-started"
    Environment = "Dev"
  }
}
