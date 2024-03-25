resource "aws_route_table" "terra-route-table" {
  vpc_id = aws_vpc.terraform-project.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform-internet-gateway.id
  }
  tags = {
    Name = "terraform-project"
    }
}

//route table association

resource "aws_route_table_association" "terra-associate-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.terra-route-table.id
}

resource "aws_route_table_association" "terra-associate-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.terra-route-table.id
}