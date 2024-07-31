terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60.0"
    }

  }

  
  backend "s3" {
    bucket         = "sandymy-free-tier-bucket-unique"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }



  required_version = "~> 1.9.0"
}
