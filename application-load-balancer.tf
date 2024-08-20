resource "aws_lb" "alb" {

  name               = var.load_balancer_name
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [aws_subnet.pub-sub-1.id, aws_subnet.pub-sub-2.id]
  internal           = false
  ip_address_type    = "ipv4"
  tags = {
    Name = var.load_balancer_name
  }
}