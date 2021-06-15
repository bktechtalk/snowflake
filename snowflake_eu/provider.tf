# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

terraform {
  required_providers {
    snowflake = {
      source = "chanzuckerberg/snowflake"
      version = "0.20.0"
    }
  }
}

provider "snowflake" {
  username = "snowtest"
  password = "Bihar@12345"
  account = "EP93758"
  region  = "eu-west-1"
  role = "ACCOUNTADMIN"
}
