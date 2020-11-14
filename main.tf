resource "aws_instance" "helloworld"{
    ami = "ami-944162ec"
    instance_type ="t2.micro"    
}

provider "aws" {
  version="2.12.0"
  #access_key = ACCESS_KEY_HERE
  #secret_key =SECRET_KEY_HERE
  region  = "us-west-2"
}