data "aws_availability_zones" "my_azs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}


# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.amzlinux2.id  //ami-0861f4e788f5069dd
  //instance_type = var.instance_type //"t3.micro"
  instance_type = var.instance_type_list[1]
  # instance_type = var.instance_type_map["dev"]
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  for_each = toset(data.aws_availability_zones.my_azs.names)
  availability_zone = each.key
  //count = 2
  tags = {
    Name = "EC2Demo-${each.key}"
  }
}
