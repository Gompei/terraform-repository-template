resource "google_storage_bucket" "sample_bucket" {
  name                        = "terraform-repository-template-sample-bucket-2"
  location                    = "asia-northeast1"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
