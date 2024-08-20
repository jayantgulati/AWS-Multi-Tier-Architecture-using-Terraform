resource "aws_lb_target_group" "target-group" {

  name        = "tg-alb"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.vpc.id
  target_type = "instance"


}

resource "aws_lb_listener" "alb-listener" {

  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group.arn
  }
}

/*
resource "aws_lb_target_group_attachment" "target-group-attach" {
  target_group_arn = aws_lb_target_group.target-group.arn
  target_id        = aws_autoscaling_group.name
  port             = 80
}

*/