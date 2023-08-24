# Scheduled Actions
resource "aws_autoscaling_schedule" "increase_capacity_7am" {
  scheduled_action_name  = "increase-capacity-7am"
  min_size               = 2
  max_size               = 10
  desired_capacity       = 8
  start_time             = "2030-03-30T11:00:00Z"
  recurrence             = "00 09 * * *"
  autoscaling_group_name = aws_autoscaling_group.my_asg.id 
}

resource "aws_autoscaling_schedule" "decrease_capacity_5pm" {
  scheduled_action_name  = "decrease-capacity-5pm"
  min_size               = 2
  max_size               = 10
  desired_capacity       = 2
  start_time             = "2030-03-30T21:00:00Z"
  recurrence             = "00 21 * * *"
  autoscaling_group_name = aws_autoscaling_group.my_asg.id
}
