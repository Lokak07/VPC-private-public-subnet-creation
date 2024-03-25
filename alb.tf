resource "aws_lb" "terraform-project" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_tls.id]
  subnets            = [aws_subnet.public-subnet-1.id,aws_subnet.public-subnet-2.id]

  enable_deletion_protection = false



  tags = {
    Environment = "production"
  }
}