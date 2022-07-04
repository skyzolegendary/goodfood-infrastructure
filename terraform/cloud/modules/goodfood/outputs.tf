resource "google_compute_firewall" "allow-http" {
  name = "allow-http"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"]
  source_tags = ["goodfood"]
}
# allow https traffic
resource "google_compute_firewall" "allow-https" {
  name = "allo-https"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  target_tags = ["https"]
  source_tags = ["goodfood"]
}
## allow ssh traffic
resource "google_compute_firewall" "allow-ssh" {
  name = "allow-ssh"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh"]
  source_tags = ["goodfood"]
}
