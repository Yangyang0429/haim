resource "aws_route_table_association" "yangsh_ngwass_pria"{
    subnet_id = aws_subnet.yangsh_pria.id
    route_table_id = aws_route_table.yangsh_ngwrt.id
}
resource "aws_route_table_association" "yangsh_ngwass_pric"{
    subnet_id = aws_subnet.yangsh_pric.id
    route_table_id = aws_route_table.yangsh_ngwrt.id
}

resource "aws_route_table_association" "yangsh_ngwass_pridba"{
    subnet_id = aws_subnet.yangsh_pridba.id
    route_table_id = aws_route_table.yangsh_ngwrt.id
}

resource "aws_route_table_association" "yangsh_ngwass_pridbc"{
    subnet_id = aws_subnet.yangsh_pridbc.id
    route_table_id = aws_route_table.yangsh_ngwrt.id
}