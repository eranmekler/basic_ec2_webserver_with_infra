resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.blog_webserver.id
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.blog_webserver.id
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "rt_for_public_subnet" {
  route_table_id = aws_route_table.public_route_table.id
  subnet_id      = aws_subnet.public.id
}
# still just associated with the vpc because private subnet is empty.
#need to configure route inside the route table and route_table association.
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.blog_webserver.id
}