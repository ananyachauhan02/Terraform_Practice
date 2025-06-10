provider "aws" {
    region = "us-east-1"

}

resource "aws_instance" "my_instance1"{
    ami = "ami-084568db4383264d4"
    instance_type = "t2.micro"
}

// creating a dynamo db lock
resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}



// creating bucket -- for first time only

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my_demo_bucket"

}

