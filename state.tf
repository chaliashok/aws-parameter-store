terraform {
  backend "s3" {
    bucket = "terraform-chakri"
    key = "params/terraform.tfstate"
    region = "us-east-1"
  }
}