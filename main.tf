

/*
data "aws_eip" "eip-public" {
  
}

resource "aws_nat_gateway" "nat-public" {
  allocation_id = "aws_eip.eip-public.id"
  subnet_id     = "aws_subnet.public-subnet-1.id"

  tags = {
    Name = "terraform-project"
  }
}

resource "aws_route_table" "route-table-1" {
  vpc_id = "aws_vpc.terraform-project"

  route {
    cidr_block = "10.0.1.0/24"
  }
  tags = {
    Name = "terraform-project"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "aws_vpc.terraform-project"

  tags = {
    Name = "terraform-project"
  }
}

*/