provider "aws" {
   region = "us-east-1"
   # access_key = ""
   # secret_key = ""
}

resource "aws_instance" "new" {
    ami = "ami-03657b56516ab7912"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "new-key"
    vpc_security_group_ids = ["sg-0780815f555104be8a"]
    tags = {
      Name = "New-instance"
      Project = "Terraform"
    }
  
}