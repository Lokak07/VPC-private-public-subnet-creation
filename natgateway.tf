resource "aws_nat_gateway" "terra-nat-1" {
  allocation_id = aws_eip.terra-eip1.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "terraform-project"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.terraform-internet-gateway]
}

resource "aws_nat_gateway" "terra-nat-2" {
  allocation_id = aws_eip.terra-eip2.id
  subnet_id     = aws_subnet.public-subnet-2.id

  tags = {
    Name = "terraform-project"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.terraform-internet-gateway]
}
/*
https://harshitdawar.medium.com/launching-a-vpc-with-public-private-subnet-nat-gateway-in-aws-using-terraform-99950c671ce9

*/