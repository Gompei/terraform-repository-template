terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.12.0"
    }
    google-beta = {
      source  = "hashicorp/google"
      version = "~> 4.12.0"
    }
  }

  backend "gcs" {
    bucket = "terraform-sandbox-gompei"
    prefix = "terraform/sample"
  }
}

provider "google" {
  project     = var.gcp_project_id
  credentials = file(var.credentials_path)
}

provider "google-beta" {
  project     = var.gcp_project_id
  credentials = file(var.credentials_path)
}
