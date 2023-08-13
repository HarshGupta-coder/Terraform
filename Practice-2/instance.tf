resource "aws_instance" "vars-instance"{
    ami = var.AMIS[var.REGION]
    instance_type = "t2.micro"
    availability_zone = var.ZONE1
    key_name = "new-key"
    vpc_security_group_ids = ["sg-0780815f555104be8a"]
    tags = {
      Name = "Vars-instance"
      Project = "Terraform"
    }

}