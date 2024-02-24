#Create a vpc

resource "aws_vpc" "jan-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "jan-vpc"
  }
}



resource "aws_instance" "class_instance222" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  key_name = "Seth1keypair"
  

  tags = {
    Name = "hello"
  }
}