resource "aws_key_pair" "webserver_public" {
  key_name   = "webserver"
  public_key = tls_private_key.webserver_private.public_key_openssh
}

resource "tls_private_key" "webserver_private" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "webserver_key" {
  content         = tls_private_key.webserver_private.private_key_pem
  filename        = "webserver.pem"
  file_permission = "0400"
}

