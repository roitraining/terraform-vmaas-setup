resource "google_compute_instance" "jump-server-student" {
  for_each     = var.machines
  name         = "jump-server-student-${each.value}"
  machine_type = "n1-standard-2"
  zone         = var.gcp_zone_1

  boot_disk {
    initialize_params {
      image = "${var.project_id}/vmeng-student"
    }
  }

  network_interface {
    network       = "vmaas"
    subnetwork    = "vmaas"
    access_config { }
  }

} 
