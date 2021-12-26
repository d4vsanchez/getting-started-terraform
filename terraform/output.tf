output "instance_ip_addr" {
  value = aws_instance.terraform-test-instance.*.public_ip
}

output "encryption_key_arn" {
  value = aws_kms_key.encryption_key.arn
}
