terraform {
  backend "s3" {
    bucket = "my_demo_bucket"
    region = "us-east-1"
    key = "/ananya-statefile/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}