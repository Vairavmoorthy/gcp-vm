provider "google" {
  credentials = ("/home/vairavamoorthy/Documents/gcp/vairav26082023-f3be453e3ccc.json")
  project = var.project_id
  zone = var.region
}
resource "google_container_cluster" "new_cluster" {
  name     = var.cluster_name
  location = var.zone
  initial_node_count = 1

}
resource "google_container_node_pool" "node_pool" {
  name = "main-pool"
  project = var.project_id
  location = var.zone
  cluster = google_container_cluster.new_cluster.name
  

  autoscaling {
    min_node_count = var.minnode
    max_node_count = var.maxnode
  }
  node_config {
    image_type = "COS_CONTAINERD"
    machine_type = var.instance_type
    disk_size_gb = 10
  }
}