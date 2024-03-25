resource "aws_instance" "web" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public-subnet-1.id
  key_name = "mypyapp"
  vpc_security_group_ids = [ aws_security_group.allow_tls.id]

  tags = {
    Name = "Public-vm"
  }
}