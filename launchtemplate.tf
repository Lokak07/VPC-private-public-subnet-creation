resource "aws_launch_template" "terra-launch" {
  name_prefix   = "terra-launch"
  image_id      = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  key_name = "mypyapp"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
}

resource "aws_autoscaling_group" "terra-auto-scaling" {
  desired_capacity   = 2
  max_size           = 4
  min_size           = 2
vpc_zone_identifier = [aws_subnet.private-subnet-1.id,aws_subnet.private-subnet-2.id]
  launch_template {
    id      = aws_launch_template.terra-launch.id
    version = "$Latest"
  }
}