output "webserver_instance_id" {
  value       = aws_instance.ec2_nginx.id
  description = "This is ID of my WebServer"
}

output "webserver_eip" {
  value       = aws_eip.my_static_ip.public_ip
  description = "This is ID of my WebServer"
}
