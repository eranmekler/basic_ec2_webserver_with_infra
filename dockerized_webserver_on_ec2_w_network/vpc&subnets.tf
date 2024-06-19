resource "aws_vpc" "blog_webserver" {
  cidr_block = "10.0.0.0/20"
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.blog_webserver.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.az
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.blog_webserver.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = var.az
  tags = {
    Name = "private_subnet"
  }
}



