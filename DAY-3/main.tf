provider "aws" {
    region = "us-east-1"
}

module "ec2-instance" {
  source = "../modules/ec2-instance"
  // add variables here itself if not using tfvars file seperatly
}


