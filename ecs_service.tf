resource "aws_ecs_service" "service" {
  name                 = "fake-video-studio"
  cluster              = aws_ecs_cluster.production.id
  desired_count        = length(var.aws_zones)
  force_new_deployment = true
  task_definition      = aws_ecs_task_definition.td.arn

  launch_type = "EC2" # Specify the launch type

  network_configuration {
    subnets          = [aws_subnet.private_subnet.*.id] # Replace with your actual subnet IDs
    security_groups  = [aws_security_group.ecs.id] # Replace with your actual security group ID
  }

/*   depends_on = [
    aws_iam_role_policy.ecs-service-role-policy,
    aws_ecs_task_definition.td,
  ] */
}
