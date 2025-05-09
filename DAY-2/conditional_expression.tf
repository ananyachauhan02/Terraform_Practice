variable "env" {
    description = "env type"
    type = string
    default = "dev"
}

variable "prod_subnet_cidr" {
  description = "CIDR block for prod"
  type = string
  default = "10.0.1.0/24"
}


variable "dev_subnet_cidr" {
  description = "CIDR block for dev"
  type = string
  default = "10.0.2.0/24"
}

resource "aws_security_group" "first_sg" {
  name = "my_security_group"
  description = "security group explaining conditional expressions"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.env == "prod" ? [var.prod_subnet_cidr] : [var.dev_subnet_cidr]
  }
}