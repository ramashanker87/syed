terraform {
  backend "s3" {
    bucket         = "syed-day12-tf-state-20260602"
    key            = "day12/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "syed-day12-terraform-locks"
    encrypt        = true
  }
}