# 가용 영역 a의 public subnet
resource "aws_subnet" "yangsh_puba" {
    vpc_id = aws_vpc.yangsh_vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-northeast-1a"
    tags = {
        "Name" = "yangsh_puba"
    }
}

resource "aws_subnet" "yangsh_pubc" {
    vpc_id = aws_vpc.yangsh_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-1c"
    tags = {
        "Name" = "yangsh_pubc"
    }
}

resource "aws_subnet" "yangsh_pria" {
    vpc_id = aws_vpc.yangsh_vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-1a"
    tags = {
        "Name" = "yangsh_pria"
    }
}

resource "aws_subnet" "yangsh_pric" {
    vpc_id = aws_vpc.yangsh_vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-1c"
    tags = {
        "Name" = "yangsh_pric"
    }
}

resource "aws_subnet" "yangsh_pridba" {
    vpc_id = aws_vpc.yangsh_vpc.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "ap-northeast-1a"
    tags = {
        "Name" = "yangsh_pridba"
    }
}

resource "aws_subnet" "yangsh_pridbc" {
    vpc_id = aws_vpc.yangsh_vpc.id
    cidr_block = "10.0.5.0/24"
    availability_zone = "ap-northeast-1c"
    tags = {
        "Name" = "yangsh_pridbc"
    }
}

