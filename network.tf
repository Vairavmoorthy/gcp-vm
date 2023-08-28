resource "google_compute_network" "vpc" {
  name = var.instance_name
  auto_create_subnetworks = "false"
  
}
resource "google_compute_subnetwork" "subnet" {
  name = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  network = google_compute_network.vpc.name
}
resource "google_compute_firewall" "allow-ssh" {
  name = var.network_firewall_ssh
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports = ["22"]
    
  }
source_ranges = ["0.0.0.0/0"]
target_tags = ["ssh"]
}
resource "google_compute_firewall" "allow-web" {
  name = var.network_firewall_web
  network = var.network_name
  allow {
    protocol = "tcp"
    ports = ["80","8080","443"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["web"]
}