terraform {
  backend "s3" {
    bucket = "terraform-state-aws-cost-alert"
    key    = "terraform.state"
    region = "eu-west-2"
    dynamodb_table = "terraform-state-aws-cost-alert-lock"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}
