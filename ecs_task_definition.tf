data "template_file" "app" {
  template = file("container_definitions.json")
  vars = {
    region         = "us-east-1"
    ecr_repository = "058382484161.dkr.ecr.us-east-1.amazonaws.com/myecrrpo" # Update with your ECR repository name
  }
}

resource "aws_ecs_task_definition" "td" {
  family                   = "fake-video-studio"
  container_definitions    = data.template_file.app.rendered # Use the rendered template here
  requires_compatibilities = ["EC2"]
  network_mode             = "bridge"
}
