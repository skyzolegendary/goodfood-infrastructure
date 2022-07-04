resource "google_compute_instance" "goodfoodapi" {
  name         = "goodfoodapi"
  machine_type = "e2-standard-2"
  zone         = var.zone
  tags         = ["API"]
  metadata = {
    enable-oslogin = "TRUE"
  }
  boot_disk {
    initialize_params {
      image = var.machine
      size  = 30
    }
  }
  #MAJ
  metadata_startup_script = "sudo apt-get update"

  network_interface {
    network    = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.public-subnet.name
  }
}