resource "aws_vpc" "main" {
  cidr_block       = var.vpc["cidr"]
  instance_tenancy = "default"

  tags = {
    Name = var.vpc["name"]
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet1["cidr"]
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet1["name"]
  }
}