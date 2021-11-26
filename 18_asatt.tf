resource "aws_autoscaling_attachment" "yangsh_asatt" {
    autoscaling_group_name = aws_autoscaling_group.yangsh_atsg.id
    alb_target_group_arn = aws_lb_target_group.yangsh_albtg.arn

}