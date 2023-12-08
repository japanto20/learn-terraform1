terraform {
  backend "s3" {
    bucket = "antobkt-terraform-state"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}