resource "aws_route_table_association" "yangsh_igas" {
    subnet_id = [aws_subnet.yangsh_puba.id]
    aws_route_table_id = aws_route_table.yangsh_rt.id

}

resource "aws_route_table_association" "yangsh_igas" {
    subnet_id = [aws_subnet.yangsh_pubc.id]
    aws_route_table_id = aws_route_table.yangsh_rt.id
    
}