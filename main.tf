module "basic_ec2_w_docker" {
  source       = "./dockerized_webserver_on_ec2_w_network"
  ami          = local.ami
  machine_type = local.machine_type
  sg_name      = local.sg_name
  vpc_name     = local.vpc_name
  region       = local.region
  az           = local.az
}
