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
  ami           = "ami-07d1e0a32156d0d21"
  instance_type = "t2.micro"
  key_name	= "aws"
  security_groups	= "launch-wizard-2"

  tags = {
    Name = "exampleServer"
  }
}
