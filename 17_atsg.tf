resource "aws_placement_group" "yangsh_pg" {
    name = "yangsh-pg"
    strategy = "cluster"
}

resource "aws_autoscaling_group" "yangsh_atsg" {
    name = "yangsh-atsg"
    min_size = 2
    max_size = 10
    health_check_grace_period = 60
    health_check_type = "EC2"
    desired_capacity = 2
    force_delete = true
    launch_configuration = aws_launch_configuration.yangsh_lacf.name
    #placement_group = aws_placement_group.yangsh_pg.id
    vpc_zone_identifier = [aws_subnet.yangsh_puba.id, aws_subnet.yangsh_pubc.id]
}