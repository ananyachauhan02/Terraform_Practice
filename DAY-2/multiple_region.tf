provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
}

resource "aws_instance" "my_instance1" {
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  provider = "aws.us-east-1"
}

resource "aws_instance" "my_instance2" {
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  provider = "aws.us-west-1"
}