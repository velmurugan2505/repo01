terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.30.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_iam_user" "velmurugan" {
  name = "testuser"
  path = "/system/"
}

resource "aws_instance" "my_ec2-vel" {
  ami           = "ami-0bb7267a511c0a8e8" # Amazon Linux 2 (us-east-1)
  instance_type = "t4g.micro"

  tags = {
    Name = "terraform-ec2-vel"
  }
}
