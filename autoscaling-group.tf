resource "aws_autoscaling_group" "name" {
  name             = var.asg_name
  max_size         = 4
  desired_capacity = 2
  min_size         = 1
  launch_template {
    id      = aws_launch_template.ec2-template.id
    version = "$Latest"
  }

  vpc_zone_identifier = [aws_subnet.priv-sub-1.id, aws_subnet.priv-sub-2.id]
  health_check_type   = "EC2"

  target_group_arns = [aws_lb_target_group.target-group.arn]


}