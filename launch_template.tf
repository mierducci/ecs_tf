/* data "template_file" "user_data_template" {  
  template = file("user_data.sh")  
  vars = {  
    ecs_cluster_name = aws_ecs_cluster.production.name  
  }  
}   */

resource "aws_launch_template" "aws_template" {
  name_prefix   = "launch-template-"
  image_id      = data.aws_ami.ecs_ami.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.default.key_name

  vpc_security_group_ids = [aws_security_group.ecs.id]

  iam_instance_profile {
    name = aws_iam_instance_profile.ecs.name
  }

  #user_data = data.template_file.user_data_template.rendered

  network_interfaces {
    associate_public_ip_address = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
