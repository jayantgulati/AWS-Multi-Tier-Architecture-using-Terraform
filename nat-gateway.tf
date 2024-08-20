resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.eip.allocation_id
  subnet_id     = aws_subnet.pub-sub-1.id

  tags = {
    Name = var.nat_gateway
  }
  connectivity_type = "public"


}

