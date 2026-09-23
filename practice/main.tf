resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc_id
    map_public_ip_on_launch = true
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
}