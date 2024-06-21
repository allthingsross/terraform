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

resource "aws_s3_bucket" "allthingsross" {
  bucket        = "allthingsross"
  force_destroy = "true"

  tags = {
    Name        = "allthingsrossbucket"
    Environment = "allthingsross"
  }
}

resource "aws_s3_bucket" "allthingsross01" {
  bucket = "allthingsross01"
  force_destroy = "true"

  tags = {
    Name        = "allthingsrossbucket01"
    Environment = "allthingsross"
  }
}
