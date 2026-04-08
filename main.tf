provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "example" {
  name     = "${var.project_id}-bucket"
  location = var.region
}
