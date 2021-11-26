resource "aws_lb_listener" "yangsh_alblis"{
    load_balancer_arn = aws_lb.yangsh_alb.arn
    port = 80
    protocol = "HTTP"

    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.yangsh_albtg.arn
    }
}