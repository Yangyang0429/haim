resource "aws_internet_gateway" "yangsh_ig"{
    vpc_id = aws_vpc.yangsh_vpc.id

    tags = {
        "Name" = "yangsh-ig"
    }
}