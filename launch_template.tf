resource "aws_launch_template" "aws_template" {
  name_prefix   = "launch-template-"
  image_id      = data.aws_ami.ecs_ami.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.default.key_name

  iam_instance_profile {
    name = aws_iam_instance_profile.ecs.name
  }

  network_interfaces {
    associate_public_ip_address = true
    security_groups = [aws_security_group.ecs.id]
  }

  lifecycle {
    create_before_destroy = true
  }
}
