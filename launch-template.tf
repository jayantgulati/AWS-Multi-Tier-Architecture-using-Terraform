resource "aws_launch_template" "ec2-template" {

  name          = var.launch_template_name
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.key-ec2.key_name

  network_interfaces {

    security_groups = [aws_security_group.ec2_sg.id]
  }

  user_data = filebase64("user-data.sh")

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = var.launch_template_name
    }

  }

}