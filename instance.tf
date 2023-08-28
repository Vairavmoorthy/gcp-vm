resource "google_compute_instance" "ubuntu" {
  name = var.instance_name
  machine_type = var.instance_type
  zone = var.zone
  tags = ["ssh","web"]
  boot_disk {
    initialize_params {
      image = var.instance_image
      size = 30
    }
  }
  network_interface {
    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.subnet.name
    access_config {
      
    }

  }
}
