variable "project_id" {
  default = "vairav26082023"
}
variable "region" {
  default = "asia-south1"
}
variable "zone" {
  default = "asia-south1-a"
}
variable "network_name" {
    default = "gnet"  
}
variable "subnet_name" {
  default = "gnet-a"
}
variable "instance_name" {
  default = "gvm"
}
variable "instance_type" {
  default = "e2-medium"
}
variable "instance_image" {
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}
variable "network_firewall_ssh" {
  default = "gfire"
}
variable "network_firewall_web" {
  default = "gfire"
}