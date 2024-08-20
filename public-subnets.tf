resource "aws_subnet" "pub-sub-1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public-subnet-1-cidr
  availability_zone = var.availability_zone-1

  tags = {
    Name = var.public-subnet-1
  }

}

resource "aws_subnet" "pub-sub-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public-subnet-2-cidr
  availability_zone = var.availability_zone-2

  tags = {
    Name = var.public-subnet-2
  }

}