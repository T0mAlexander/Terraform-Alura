terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.6.1"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = var.ec2-ami["sa-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key-name

  vpc_security_group_ids = [aws_security_group.ssh-access.id]

  tags = {
    "name" = "machine-1"
  }
}

# resource "aws_dynamodb_table" "dynamodb-terraform" {
#   name         = "Products"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "ProductID"
#   range_key    = "ProductName"

#   attribute {
#     name = "ProductID"
#     type = "S"
#   }

#   attribute {
#     name = "ProductName"
#     type = "S"
#   }
# }

resource "aws_s3_bucket" "terraform-bucket" {
  bucket = "tf-alura-bucket"
  acl = "private"

  tags = {
    name        = "s3-tf-bucket"
    environment = "dev"
  }
}