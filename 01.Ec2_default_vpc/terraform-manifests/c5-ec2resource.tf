
# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.amzlinux2.id  //ami-0861f4e788f5069dd
  instance_type = var.instance_type //"t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    Name = "EC2Demo2"
  }
}
