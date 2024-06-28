resource "aws_instance" "webserver" {
  ami                         = var.ami
  instance_type               = var.machine_type
  associate_public_ip_address = true
  tags = {
    Name = "webserver"
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo yum install docker -y
              systemctl enable docker
              systemctl start docker
              sudo docker run -d --name ${var.docker_container_name} -p 80:5000 ${var.docker_image}
              EOF
  key_name  = aws_key_pair.webserver_public.key_name
  vpc_security_group_ids = [aws_security_group.webserver_public.id,
  aws_security_group.webserver_public_subnet_ssh.id]
  subnet_id = aws_subnet.public.id
  depends_on = [aws_security_group.webserver_public, aws_security_group.webserver_public_subnet_ssh]
}

