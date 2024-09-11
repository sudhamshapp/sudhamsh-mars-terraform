terraform {
  backend "s3" {
    bucket = "theremotebackend"
    key    = "thisisthestatefilepath/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-lock"
  }
}
