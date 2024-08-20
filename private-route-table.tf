resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.vpc.id

}

resource "aws_route_table_association" "private-rt-association-1" {
  subnet_id      = aws_subnet.priv-sub-1.id
  route_table_id = aws_route_table.private-route-table.id

}

resource "aws_route_table_association" "private-rt-association-2" {
  subnet_id      = aws_subnet.priv-sub-2.id
  route_table_id = aws_route_table.private-route-table.id

}

resource "aws_route" "private-route-1" {
  route_table_id         = aws_route_table.private-route-table.id
  destination_cidr_block = var.cidr_open_from_internet
  gateway_id             = aws_nat_gateway.nat-gw.id

}