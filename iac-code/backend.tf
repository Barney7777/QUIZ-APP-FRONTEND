terraform {
  backend "s3" {
    # don't use variables here, just use values
    bucket         = "barney-terraform-remote-state"
    key            = "frontend/dev/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "barney-terraform-state-lock"
  }
}