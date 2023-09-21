resource "google_storage_bucket" "auto-expire" {
  name          = var.bucketname
  location      = "US"
  project       = var.projectid
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
