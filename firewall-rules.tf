# Allow internal traffic on all ports
resource "google_compute_firewall" "allow-internal" {
  name    = "vmaas-allow-internal"
  network = "vmaas"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "10.27.112.0/27"
  ]
}


# allow rdp
resource "google_compute_firewall" "allow-rdp" {
  name    = "vmaas-allow-rdp"
  network = "vmaas"
  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }
}

# allow all from gcve
resource "google_compute_firewall" "allow-gcve" {
  name    = "vmaas-allow-gcve"
  network = "vmaas"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "10.27.113.0/24", "10.27.114.0/23", "10.27.116.0/22", "10.27.115.0/24", "10.27.117.0/24"
  ]
}

# allow all from on-prem
resource "google_compute_firewall" "allow-on-prem" {
  name    = "vmaas-allow-on-prem"
  network = "vmaas"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "10.26.0.0/16"
  ]
}