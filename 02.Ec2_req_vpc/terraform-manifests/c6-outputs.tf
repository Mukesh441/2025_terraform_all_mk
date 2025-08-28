/*output "instance_publicip" {
  description = "Public IP address of the EC2 instance"
  value = aws_instance.ec2demo.public_ip
}

output "instance_publicdns" {
  description = "Public DNS name of the EC2 instance"
  value = aws_instance.ec2demo.public_dns
}

output "for_output_list" {
  description = "List of outputs for the EC2 instances"
  value = [
    for instance in aws_instance.ec2demo : {
      public_ip  = instance.public_ip
      public_dns = instance.public_dns
    }
  ]
}
*/

output "for_output_map" {
  description = "Map of outputs for the EC2 instances"
  value = {
    for instance in aws_instance.ec2demo : instance.availability_zone => {
      public_ip  = instance.public_ip
      public_dns = instance.public_dns
    }
  }
}

/*
output "splat_output" {
  description = "Splat expression for the EC2 instances"
  //value = [aws_instance.ec2demo[*].public_ip , aws_instance.ec2demo[*].public_dns]
  //depends_on = [aws_instance.ec2demo]
  value = [for instance in aws_instance.ec2demo : instance.public_ip]
}*/

