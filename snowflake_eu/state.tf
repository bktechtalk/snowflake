terraform{
	backend "s3" {
		bucket = "aws-s3-snowflake"
		encrypt = true
		key = "terraform.tfstate"
	}
}

