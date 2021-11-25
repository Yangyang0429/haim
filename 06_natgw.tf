resource "aws_eip" "yangsh_ngw_ip" {
    vpc = true
}

resource "aws_nat_gateway" "yangsh_ngw" {
    allocation_id = aws_eip.yangsh_ngw_ip.id
    subnet_id = aws_subnet.yangsh_pria.id
    tags = {
        "Name" = "yangsh-ngw"
    }
}