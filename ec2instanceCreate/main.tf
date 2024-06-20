terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"
  profile = "terraform"
}

resource "aws_instance" "exampleServer" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  tags = {
    Name = "exampleServer"
  }
}
