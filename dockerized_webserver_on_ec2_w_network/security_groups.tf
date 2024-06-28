resource "aws_security_group" "webserver_public" {
  name        = var.sg_name
  description = "sg for ec2 on public subnet"
  vpc_id      = aws_vpc.blog_webserver.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "webserver_public_subnet_ssh" {
  name        = "public_subnet_ssh"
  description = "allow ssh into ec2 instances in the public subnet"
  vpc_id      = aws_vpc.blog_webserver.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #Adjust according to you security preferences
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}