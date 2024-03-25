resource "aws_lb_target_group" "test-terraform" {
  name     = "tf-terraform-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.terraform-project.id
  target_type = "instance"
}

resource "aws_lb_target_group_attachment" "instance1_attachment" {
  target_group_arn = aws_lb_target_group.test-terraform.arn
  target_id        = "i-00743633932dc5f3d"
}

resource "aws_lb_target_group_attachment" "instance2_attachment" {
  target_group_arn = aws_lb_target_group.test-terraform.arn
  target_id        = "i-0badddccb1f60dc4b"
}



