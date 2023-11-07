resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
}


resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_subnet1
  availability_zone = var.availability_zones[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public subnet 1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_subnet2
  availability_zone = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "public subnet 2"
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet1
  availability_zone = var.availability_zones[0]

  tags = {
    Name = "private subnet 1"
  }
}

resource "aws_subnet" "subnet4" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnet2
  availability_zone = var.availability_zones[1]

  tags = {
    Name = "private subnet 2"
  }
}