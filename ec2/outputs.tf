output "instance_id" {
  value = aws_instance.instancemode.id
}

output "public_ip" {
  value = aws_instance.instancemode.public_ip
}

output "private_ip" {
  value = aws_instance.instancemode.private_ip
}
