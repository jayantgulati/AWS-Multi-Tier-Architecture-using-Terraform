/*
resource "aws_instance" "ec2" {

  ami                         = "ami-0a4408457f9a03be3"
  instance_type               = "t2.micro"
  availability_zone           = var.availability_zone-1
  associate_public_ip_address = "true"
  key_name                    = aws_key_pair.key-ec2.key_name
  security_groups             = [aws_security_group.ec2_sg.id]
  user_data                   = filebase64("user-data.sh")

  subnet_id = aws_subnet.pub-sub-1.id
  tags = {
    Name = "terraform-ec2"
  }

}
*/