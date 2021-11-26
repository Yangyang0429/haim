resource "aws_db_instance" "yangsh_mydb" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "mysql" 
    engine_version = "8.0"
    instance_class = "db.t2.micro"
    name = "mydb"
    identifier = "mydb"
    username = "admin"
    password = "aa845367"
    parameter_group_name = "default.mysql8.0"
    availability_zone = "ap-northeast-1a"
    db_subnet_group_name = aws_db_subnet_group.yangsh_dbsg.id
    vpc_security_group_ids = [aws_security_group.yangsh_websg.id]
    skip_final_snapshot = true
    tags = {
        "Name" = "yangsh-db"
    }

}
resource "aws_db_subnet_group" "yangsh_dbsg" {
    name = "yangsh-dbsg"
    subnet_ids = [aws_subnet.yangsh_pridba.id,aws_subnet.yangsh_pridbc.id]
}