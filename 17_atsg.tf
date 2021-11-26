resource "aws_placement_group" "yangsh_pg" {
    name = "yangsh-pg"
    strategy = "cluster"
}

resource "aws_autoscaling_group" "yangsh_atsg" {
    name = "yangsh-pg"
    min_size = 2
    max_size = 8
    health_check_grace_period = 300
    health_check_type = "ELB"
    desired_capacity = 2
    force_delete = true
    launch_configuration = aws_launch_configuration.yangsh_lacf.name
    placement_group = aws_placement_group.yangsh_pg.id
    vpc_zone_identifier = [aws_subnet.yangsh_puba.id, aws_subnet.yangsh_pubc.id]
}