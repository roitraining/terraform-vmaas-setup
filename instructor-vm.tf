# Create Instructor VM 
resource "google_compute_instance" "jump-server-instructor" {
  name         = "jump-server-instructor"
  machine_type = "n1-standard-2"
  zone         = var.gcp_zone_1

  boot_disk {
    initialize_params {
      image = "${var.project_id}/vmeng-instructor"
    }
  }

  network_interface {
    network       = "vmaas"
    subnetwork    = "vmaas"
    access_config { }
  }
} 


output "instructor-machine-name" {
  value = google_compute_instance.jump-server-instructor.name
}

output "instructor-external-ip" {
  value = google_compute_instance.jump-server-instructor.network_interface.0.access_config.0.nat_ip
}

output "instructor-internal-ip" {
  value = google_compute_instance.jump-server-instructor.network_interface.0.network_ip
}

