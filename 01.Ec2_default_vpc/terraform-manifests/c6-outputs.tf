output "instance_publicip" {
  description = "Public IP address of the EC2 instance"
  value = aws_instance.ec2demo.public_ip
}

output "instance_publicdns" {
  description = "Public DNS name of the EC2 instance"
  value = aws_instance.ec2demo.public_dns
}

