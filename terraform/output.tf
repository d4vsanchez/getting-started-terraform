output "instance_ip_addr" {
  value = aws_instance.terraform-test-instance.*.public_ip
}
