resource "google_storage_bucket" "auto_expire" {
  name          = var.bucket_name
  location      = var.bucket_location
  project       = var.project_id
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "terraform_state" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  project       = var.project_id
  force_destroy = false
  location      = var.bucket_location
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}