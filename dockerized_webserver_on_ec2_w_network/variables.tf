variable "ami" {
  type        = string
  description = "ami image to use on the deployment"
}

variable "machine_type" {
  type        = string
  description = "machine type to use for the ami"
}

variable "sg_name" {
  type        = string
  description = "name for the security_group"
}

variable "vpc_name" {
  type        = string
  description = "the vpc name"
}

variable "region" {
  type        = string
  description = "the region to be deployed in"
}

variable "az" {
  type        = string
  description = "az configuration for the subnet"
}

variable "docker_image" {
  type        = string
  description = "the docker image to be run on ec2 bootstrap"
}

variable "docker_container_name" {
  type        = string
  description = "the docker --name attribute to be given to the docker image "
}