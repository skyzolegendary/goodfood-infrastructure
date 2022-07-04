resource "google_compute_network" "vpc" {
  name = var.project
  auto_create_subnetworks = "false"
  routing_mode = "GLOBAL"
}
resource "google_compute_subnetwork" "public-subnet" {
  name = "public-sub-goodfood"
  ip_cidr_range = var.cidr_block
  network = google_compute_network.vpc.name
  region = var.region
}