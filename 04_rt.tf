resource "aws_route_table" "yangsh_rt"{
    vpc_id = aws_vpc.yangsh_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.yangsh_ig.id
    }
    tags = {
        "Name" = "yangsh-rt"
    }
}