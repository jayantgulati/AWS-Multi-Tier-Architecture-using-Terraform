resource "aws_route_table" "public-route-table" {

  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.public-route-table-name
  }

}

resource "aws_route_table_association" "public-rt-association-1" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.public-route-table.id

}

resource "aws_route_table_association" "Public-rt-association-2" {
  subnet_id      = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.public-route-table.id

}

resource "aws_route" "public-route-1" {
  route_table_id         = aws_route_table.public-route-table.id
  destination_cidr_block = var.cidr_open_from_internet
  gateway_id             = aws_internet_gateway.internet_gateway.id

}