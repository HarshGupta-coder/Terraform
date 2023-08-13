terraform {
  backend "s3" {
    bucket = "terra-state-backend-new"
    key    = "terraform/backend"
    region = "us-east-2"
  }
}
