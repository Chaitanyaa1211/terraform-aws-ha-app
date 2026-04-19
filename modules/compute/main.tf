resource "aws_launch_template" "lt" {
  name_prefix   = "app-template"
  image_id      = "ami-098e39bafa7e7303d"
  instance_type = "t3.small"

  user_data = base64encode(file("${path.module}/../../user_data.sh"))

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [var.sg_id]
  }
}



resource "aws_autoscaling_group" "asg" {
  desired_capacity = 2
  max_size         = 3
  min_size         = 1

  vpc_zone_identifier = var.subnets
  target_group_arns   = [var.tg_arn]

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "SmartCalc-ASG-Instance"
    propagate_at_launch = true
  }
}
