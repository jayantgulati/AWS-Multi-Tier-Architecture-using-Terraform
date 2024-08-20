resource "aws_security_group" "alb_sg" {
  name   = var.alb_security_group
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.alb_security_group
  }
}

resource "aws_vpc_security_group_ingress_rule" "alb-ib-allow-port-80" {
  security_group_id = aws_security_group.alb_sg.id
  cidr_ipv4         = var.cidr_open_from_internet
  from_port         = var.port_80
  to_port           = var.port_80
  ip_protocol       = var.protocol_tcp

}

resource "aws_vpc_security_group_ingress_rule" "alb-ib-allow-port-443" {
  security_group_id = aws_security_group.alb_sg.id
  cidr_ipv4         = var.cidr_open_from_internet
  from_port         = var.port_443
  to_port           = var.port_443
  ip_protocol       = var.protocol_tcp

}

resource "aws_vpc_security_group_egress_rule" "alb-ob-allow-all-traffic" {
  security_group_id = aws_security_group.alb_sg.id
  cidr_ipv4         = var.cidr_open_from_internet
  ip_protocol       = -1 # semantically equivalent to all ports

}


resource "aws_security_group" "ec2_sg" {
  name   = "ec2 security group"
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.ec2_security_group
  }
}

resource "aws_vpc_security_group_ingress_rule" "ec2-ib-allow-port-80" {
  security_group_id            = aws_security_group.ec2_sg.id
  from_port                    = var.port_80
  to_port                      = var.port_80
  ip_protocol                  = var.protocol_tcp
  referenced_security_group_id = aws_security_group.alb_sg.id


}

resource "aws_vpc_security_group_ingress_rule" "ec2-ib-allow-port-443" {
  security_group_id            = aws_security_group.ec2_sg.id
  from_port                    = var.port_443
  to_port                      = var.port_443
  ip_protocol                  = var.protocol_tcp
  referenced_security_group_id = aws_security_group.alb_sg.id

}

resource "aws_vpc_security_group_egress_rule" "ec2-ob-allow-all-traffic" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = var.cidr_open_from_internet
  ip_protocol       = -1 # semantically equivalent to all ports

}

resource "aws_security_group" "db_sg" {
  name   = "db security group"
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "db security group"
  }
}

resource "aws_vpc_security_group_ingress_rule" "db-ib-allow-port-80" {
  security_group_id = aws_security_group.db_sg.id
  cidr_ipv4         = var.cidr_open_from_internet
  from_port         = var.port_80
  to_port           = var.port_80
  ip_protocol       = var.protocol_tcp

}

resource "aws_vpc_security_group_ingress_rule" "db-ib-allow-port-443" {
  security_group_id = aws_security_group.db_sg.id
  cidr_ipv4         = var.cidr_open_from_internet
  from_port         = var.port_443
  to_port           = var.port_443
  ip_protocol       = var.protocol_tcp

}

resource "aws_vpc_security_group_egress_rule" "db-ob-allow-all-traffic" {
  security_group_id = aws_security_group.db_sg.id
  cidr_ipv4         = var.cidr_open_from_internet
  ip_protocol       = -1 # semantically equivalent to all ports

}