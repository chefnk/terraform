provider "aws" {
  region 		  = "us-east-1"
  shared_credentials_file = "/root/.aws/credentials"
  profile		  = "default"
}

resource "aws_instance" "example" {
  ami		= "ami-8c1be5f6"
  instance_type = "t2.micro"
  
  tags {
    Name = "terraform-example"
  }
}

