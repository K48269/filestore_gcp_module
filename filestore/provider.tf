terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.37.0"
    }
  }
}

provider "google" {
  project     = "civil-keyword-429011-g6"
  region      = "us-central1"
  credentials = "sa.json"
}