terraform {
  backend "s3" {
    bucket = "ismail-terraform-bucket"
    key    = "terra.tfstate"
    region = "us-east-2"
    dynamodb_table = "ismail-dynamodb"
  }
}