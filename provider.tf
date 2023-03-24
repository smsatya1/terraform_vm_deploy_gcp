terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.85.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "suse-gcp-vm-deploy"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "suse-gcp-vm-deploy.json"
}











