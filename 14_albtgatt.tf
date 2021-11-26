resource "aws_lb_target_group_attachment" "yangsh_albtgatt" {
    target_group_arn = aws_lb_target_group.yangsh_albtg.arn
    target_id = aws_instance.yangsh_web.id
    port = 80
}