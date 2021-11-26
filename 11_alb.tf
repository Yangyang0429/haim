resource "aws_lb" "yangsh_alb" {
    name = "yangsh-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.yangsh_websg.id]
    subnets = [aws_subnet.yangsh_puba.id,aws_subnet.yangsh_pubc.id]
    tags = {
        "Name" = "yangsh-alb"
    }
}