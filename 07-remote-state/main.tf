terraform {
  backend "s3" {
    bucket = "terraform-82"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "null_resource" "test" {}