terraform {
  backend "s3" {
        bucket = "akhilsathyan20"
        key     = "project07/terraform.tfstate"
        region = "us-west-2"
  }
}
