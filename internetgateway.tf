resource "aws_internet_gateway" "terraform-internet-gateway" {
  vpc_id = aws_vpc.terraform-project.id
depends_on = [ aws_subnet.public-subnet-1,aws_subnet.public-subnet-2 ]
  tags = {
    Name = "terraform-project-internetgateway"
  }
}
