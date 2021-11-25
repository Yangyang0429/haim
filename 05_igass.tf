resource "aws_route_table_association" "yangsh_puba" {
    subnet_id = aws_subnet.yangsh_puba.id
    route_table_id = aws_route_table.yangsh_rt.id

}
resource "aws_route_table_association" "yangsh_pubc" {
    subnet_id = aws_subnet.yangsh_pubc.id
    route_table_id = aws_route_table.yangsh_rt.id

}

