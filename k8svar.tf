variable "project_id" {
  default = "vairav26082023"
}
variable "region" {
  default = "us-central1"
}
variable "cluster_name" {
  default = "web4"
}
variable "zone" {
  default = "us-central1-c"
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
  default = "e2-small"
}
variable "minnode" {
  default = 1
}
variable "maxnode" {
  default = 2
}
variable "disksize" {
   default = 10
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