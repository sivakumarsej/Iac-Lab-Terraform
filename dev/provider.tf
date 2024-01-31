terraform {
  required_version = ">= 1.0"   
  required_providers {
    aws = {
      source  = "hashicorp/aws"    
      version = "5.31"      
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "ekslab-terraform-tfstate"
    key            = "iac/dev/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "ekslab-terraform-locks"
    encrypt        = "true"
    profile = "shiva-aws"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "shiva-aws"
}