# setup the GCP provider | provider.tf

terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = var.project_id
  region  = var.gcp_region
  zone    = var.gcp_zone_1
}
