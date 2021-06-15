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
  username = "snowcicd"
  password = "Bihar@12345"
  account = "ZGA44757"
  region  = "us-west-2"
  role = "ACCOUNTADMIN"
}
