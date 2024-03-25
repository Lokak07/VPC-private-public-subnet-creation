
resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.terraform-project.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
    Name = "terraform-project-public-subnet1"
    }
}

resource "aws_subnet" "public-subnet-2" {
    vpc_id = aws_vpc.terraform-project.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true
    tags = {
    Name = "terraform-project-public-subnet2"
    }
}

resource "aws_subnet" "private-subnet-1" {
    vpc_id = aws_vpc.terraform-project.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1a"
    tags = {
    Name = "terraform-project-private-subnet1"
    }
}

resource "aws_subnet" "private-subnet-2" {
    vpc_id = aws_vpc.terraform-project.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "us-east-1b"
    tags = {
    Name = "terraform-projectproject-private-subnet2"
    }
}