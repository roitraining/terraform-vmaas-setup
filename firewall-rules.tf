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

# allow all from gcve - For Project 1
resource "google_compute_firewall" "allow-gcve-1" {
  count = var.project_id == "pso-vmaas-1" ? 1 : 0
  name    = "vmaas-allow-gcve-1"
  network = "vmaas"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "10.27.113.0/24", "10.27.114.0/24", "10.27.116.0/24", "10.27.115.0/24", "10.27.117.0/24"
  ]
}

# allow all from gcve - For Project 2
resource "google_compute_firewall" "allow-gcve-2" {
  count = var.project_id == "pso-vmaas-2" ? 1 : 0
  name    = "vmaas-allow-gcve-2"
  network = "vmaas"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "10.27.121.0/24", "10.27.122.0/24", "10.27.123.0/24", "10.27.124.0/24", "10.27.125.0/24"
  ]
}

# allow all from on-prem - For Project 1
resource "google_compute_firewall" "allow-on-prem-1" {
  count = var.project_id == "pso-vmaas-1" ? 1 : 0
  name    = "vmaas-allow-on-prem-1"
  network = "vmaas"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "10.26.201.0/24"
  ]
}


# allow all from on-prem - For Project 2
resource "google_compute_firewall" "allow-on-prem-2" {
  count = var.project_id == "pso-vmaas-2" ? 1 : 0
  name    = "vmaas-allow-on-prem-2"
  network = "vmaas"
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "10.26.202.0/24"
  ]
}