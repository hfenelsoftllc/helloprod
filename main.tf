provider "aws" {
  version="2.65.0"
  #access_key = ACCESS_KEY_HERE
  #secret_key =SECRET_KEY_HERE
  region  = "us-west-2"
}
#Adding datasource to chose latest ami
data "aws_ami" "ubuntu"{
    #A
    most_recent= true
    filter{
        #B
        name="name"
        values=["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
    #C
    owners=["099720109477"]
}
#define the resource to pickup the available ami
resource "aws_instance" "helloworld"{
    #D
    ami = data.aws_ami.ubuntu.id
    instance_type ="t2.micro"  
    tags={
        Name="helloworld"
    }  
}