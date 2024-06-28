locals {
  ami                   = "ami-0551ce4d67096d606"
  machine_type          = "t2.micro"
  sg_name               = "public_webserver"
  vpc_name              = "blog'_vpc"
  region                = "eu-west-1"
  az                    = "eu-west-1a"
  docker_image          = "eranmekler/erans_blog:v1.0"
  docker_container_name = "erans_blog"
}