
variable "project_id" {
  type = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  type = string
  description = "GCP Region"
}

# define GCP zone
variable "gcp_zone_1" {
  type = string
  description = "GCP Zone"
}

# define machine IDs
variable "machines" {
  description = "A list of machine numbers"
  type        = set(string)
  default     = ["01", "02", "03", "04", "05",
                 "06", "07", "08", "09", "10",
                 "11", "12", "13", "14", "15",
                 "16", "17", "18", "19", "20",
                 "21", "22", "23", "24", "25"]
}
