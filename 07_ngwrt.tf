resource "aws_route_table" "yangsh_ngwrt" {
    vpc_id = aws_vpc.yangsh_vpc.id
    
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.yangsh_ngw.id
    }
    tags = {
        "Name" = "yangsh-ngwrt"
    }
}